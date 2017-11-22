var con = file_text_open_read(working_directory + argument0);
var theData = "";
while (!file_text_eof(con))
{
    theData += file_text_read_string(con);
    file_text_readln(con);
}
file_text_close(con)
var ds = json_decode(theData);
return ds[? "default"];