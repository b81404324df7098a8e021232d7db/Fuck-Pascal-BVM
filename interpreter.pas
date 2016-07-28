var 
    ch:char;
    c:array[1..100000] of byte;
    pointer:longint;
    tmp:char;
begin
    assign(input,'source.bf');
    assign(output,'source.pas');
    reset(input);
    rewrite(output);
    fillchar(c,sizeof(c),0);
    pointer:=1;
    while ch<>'$' do
    begin
        read(ch);
        case ch of
            '>':inc(pointer);
            '<':dec(pointer);
            '+':inc(c[pointer]);
            '-':dec(c[pointer]);
            '.':wwrite(chr(c[pointer]));
            ',':begin read(tmp); c[pointer]:=ord(tmp); end;
            '[':begin while ord(c[pointer])<>0 do writeln('begin'); end;
            ']':writeln('end;');
        end;
    end;
    close(input);
    close(output);
end.
