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

Token lexer_next_token(Lexer *lexer) {
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

void lexer_init(Lexer *lexer, const char *input) {
    lexer->input = input;
    lexer->pos = 0;
}

void parser_init(Parser *parser, const char *input) {
    lexer_init(&parser->lexer, input);
    parser->current = lexer_next_token(&parser->lexer);
}

void parser_eat(Parser *parser, TokenType type) {
    if (parser->current.type == type) {
        parser->current = lexer_next_token(&parser->lexer);
    }
}

int parser_parse_expr(Parser *parser);

int parser_parse_factor(Parser *parser) {
    Token token = parser->current;
    int result = 0;
    if (token.type == TOKEN_NUMBER) {
        parser_eat(parser, TOKEN_NUMBER);
        return token.value;
    } else if (token.type == TOKEN_LPAREN) {
        parser_eat(parser, TOKEN_LPAREN);
        result = parser_parse_expr(parser);
        parser_eat(parser, TOKEN_RPAREN);
        return result;
    }
    return result;
}

int parser_parse_term(Parser *parser) {
    int result = parser_parse_factor(parser);
    Token token;

    while (parser->current.type == TOKEN_PLUS || parser->current.type == TOKEN_MINUS) {
        token = parser->current;
        if (token.type == TOKEN_PLUS) {
            parser_eat(parser, TOKEN_PLUS);
            result += parser_parse_factor(parser);
        } else if (token.type == TOKEN_MINUS) {
            parser_eat(parser, TOKEN_MINUS);
            result -= parser_parse_factor(parser);
        }
    }
    
    return result;
}

int parser_parse_expr(Parser *parser) {
    return parser_parse_term(parser);
}

int compile(const char *input) {
    Parser parser;
    int result;
    parser_init(&parser, input);
    result = parser_parse_expr(&parser);
    return result;
}
