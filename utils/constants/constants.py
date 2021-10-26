SWIFT_KEYWORDS = [
    "default",
    "case",
    "if",
    "else",
    "for",
    "while",
    "do",
    "extension",
    "struct",
    "class",
    "actor",
    "var",
    "let",
    "as",
    "is",
    "set",
]
"List of Swift keywords that generators should avoid using without `backticks`"


def backticked_term(term: str) -> str:
    if term in SWIFT_KEYWORDS:
        return f"`{term}`"

    return term
