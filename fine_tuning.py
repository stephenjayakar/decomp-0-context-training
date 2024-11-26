import json

system_prompt = "You are a decompilation assistant for the PowerPC ISA. You're going to only return C code that will ideally lead to the target assembly. This is using an old compiler, so trivial C changes will substantially change the ASM output. You are also using an old version of C, C99. You cannot use any includes."


def decompile_template(asm):
    return f"""
Given this ASM program in PowerPC:

```asm
{asm}
```

Please give me only C code that corresponds to this assembly. Make sure it compiles, and there are no includes!
"""


def c_code_template(c):
    return f"""
```c
{c}
```
"""


def fine_tuning_template(
    c,
    asm,
):
    return {
        "messages": [
            {"role": "system", "content": system_prompt},
            {"role": "user", "content": decompile_template(asm)},
            {"role": "assistant", "content": c_code_template(c), "weight": 1},
        ]
    }


messages = []
for i in range(1, 11):
    with open(f"general/{i}.c", "r") as c_file:
        c = c_file.read()
    with open(f"general/{i}.s", "r") as asm_file:
        asm = asm_file.read()
    messages.append(json.dumps(fine_tuning_template(c, asm)))

with open("temp/output.jsonl", "w") as output_file:
    output_file.write("\n".join(messages))
