begin
    null;	 
exception
    when others
    then
        dbms_output.put_line(sqlerrm);
end;
/
