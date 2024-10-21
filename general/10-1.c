typedef enum {
    TOKEN_NUMBER,
    TOKEN_PLUS,
    TOKEN_MINUS,
    TOKEN_LPAREN,
    TOKEN_RPAREN,
    TOKEN_EOF,
    TOKEN_INVALID
} TokenType;

typedef struct {
    TokenType type;
    int value;
} Token;

typedef struct {
    const char *input;
    int pos;
} Lexer;

typedef struct {
    Lexer lexer;
    Token current;
} Parser;

Token f1(Lexer *lexer) {
    Token token;
    char c;
    int value;

    while (lexer->input[lexer->pos] == ' ') {
        lexer->pos++;
    }
    
    c = lexer->input[lexer->pos++];
    
    if (c >= '0' && c <= '9') {
        value = c - '0';
        while (lexer->input[lexer->pos] >= '0' && lexer->input[lexer->pos] <= '9') {
            value = value * 10 + (lexer->input[lexer->pos++] - '0');
        }
        token.type = TOKEN_NUMBER;
        token.value = value;
        return token;
    }
    
    switch (c) {
        case '+': token.type = TOKEN_PLUS; break;
        case '-': token.type = TOKEN_MINUS; break;
        case '(': token.type = TOKEN_LPAREN; break;
        case ')': token.type = TOKEN_RPAREN; break;
        case '\0': token.type = TOKEN_EOF; break;
        default: token.type = TOKEN_INVALID; break;
    }
    
    token.value = 0;
    return token;
}

void f2(Lexer *lexer, const char *input) {
    lexer->input = input;
    lexer->pos = 0;
}

void f3(Parser *parser, const char *input) {
    f2(&parser->lexer, input);
    parser->current = f1(&parser->lexer);
}

void f4(Parser *parser, TokenType type) {
    if (parser->current.type == type) {
        parser->current = f1(&parser->lexer);
    }
}

int f7(Parser *parser);

int f5(Parser *parser) {
    Token token = parser->current;
    int result = 0;
    if (token.type == TOKEN_NUMBER) {
        f4(parser, TOKEN_NUMBER);
        return token.value;
    } else if (token.type == TOKEN_LPAREN) {
        f4(parser, TOKEN_LPAREN);
        result = f7(parser);
        f4(parser, TOKEN_RPAREN);
        return result;
    }
    return result;
}

int f6(Parser *parser) {
    int result = f5(parser);
    Token token;

    while (parser->current.type == TOKEN_PLUS || parser->current.type == TOKEN_MINUS) {
        token = parser->current;
        if (token.type == TOKEN_PLUS) {
            f4(parser, TOKEN_PLUS);
            result += f5(parser);
        } else if (token.type == TOKEN_MINUS) {
            f4(parser, TOKEN_MINUS);
            result -= f5(parser);
        }
    }
    
    return result;
}

int f7(Parser *parser) {
    return f6(parser);
}

int f8(const char *input) {
    Parser parser;
    int result;
    f3(&parser, input);
    result = f7(&parser);
    return result;
}
