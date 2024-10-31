#include <stdio.h>
#include <fcgi_stdio.h>

int main() {
    while (FCGI_Accept() >= 0) {
        printf("Content-type: text/html;\n\n");
        printf("<HTML><HEAD>\n<TITLE>Hello world!</TITLE>\n");
        printf("<style>\nbody {\nmargin: 1em 2em 1em 5em;\n");
        printf("background-color: #1e2a3e;\ncolor: black;\n}\n");
        printf("p {\nbackground-color: white;\nborder-right-style: double;\n");
        printf("border-right-color: #00FA9A;\nborder-right-width: 10px;\n");
        printf("padding: 25px;\nline-height: 3;\ntext-indent: 5em;\n");
        printf("font-size: 20pt;\nfont-family: Arial;\n}\nh1.f {\nfont-size: 30pt;\n");
        printf("color: #00FA9A;\nfont-family: Arial;\ntext-align: center;\n");
        printf("}\n</style>\n</HEAD>\n<BODY>\n<h1 class=\"f\">SCHOOL 21</h1>\n");
        printf("<p>HELLO WORLD!</p>\n</BODY>\n</HTML>\n");
    }
    return 0;
}
