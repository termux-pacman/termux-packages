#ifndef _getsubopt_h
#define _getsubopt_h
/**
 * Parses option suboptions from a string.
 * @param optionp Pointer to the string to parse.
 * @param tokens Array of valid suboption tokens.
 * @param valuep Pointer to store the value part.
 * @return Index of the matched token or -1 if no match.
 */
int getsubopt (char **optionp, char *const *tokens, char **valuep);
#endif
