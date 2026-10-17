--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.logic.java.jar.JarUtil_Package is

   procedure Initialize_Fields (This : in out JarUtil'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out JarUtil'Class; jarURL : URL_Access) is
   begin
      Initialize_Fields (This);
        This.jarURL := jarURL;
   end Initialize;

   function Create (jarURL : URL_Access) return JarUtil_Access is
      This : constant JarUtil_Access := new JarUtil;
   begin
      Initialize (This.all, jarURL);
      return This;
   end Create;

   procedure show (This : in out JarUtil) is
      cache : Short_Short_Integer_Array_Access;
      conn : URLConnection_Access;
      jis : JarInputStream_Access;
      entry_Id : JarEntry_Access;
      offset : Integer;
      i : Integer;
      newcache : Short_Short_Integer_Array_Access;
      tmp : Short_Short_Integer_Array_Access;
   begin
        cache := new Short_Short_Integer_Array'(0 .. (1024) - 1 => 0);
        begin
            conn := This.jarURL.openConnection;
            jis := JarInputStream_Package.Create (conn.getInputStream);
            while True loop
                entry_Id := jis.getNextJarEntry;
                if (entry_Id) /= (null) then
                    if not (entry_Id.isDirectory) then
                        offset := 0;
                        i := 0;
                        while ((Java_Assign (i, jis.read (cache, offset, (cache'Length) - (offset))))) /= (-(1)) loop
                            offset := (offset) + (i);
                            if (offset) >= (cache'Length) then
                                newcache := new Short_Short_Integer_Array'(0 .. ((cache'Length) + (1024)) - 1 => 0);
                                Java_Array_Copy (cache, 0, newcache, 0, cache'Length);
                                cache := newcache;
                            end if;
                        end loop;
                        tmp := new Short_Short_Integer_Array'(0 .. (offset) - 1 => 0);
                        Java_Array_Copy (cache, 0, tmp, 0, offset);
                        Ada.Text_IO.Put_Line (Java_Image (entry_Id.getName));
                    end if;
                else
                    exit;
                end if;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    ex : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Ada.Text_IO.Put_Line (Java_Image (ex));
            Java_Print_Stack_Trace (ex);
                end;
        end;
   end show;

   --  throws Exception
   procedure main (args : Unbounded_String_Array_Access) is
   begin
        JarUtil_Package.Create (URL_Package.Create (To_Unbounded_String ("file:///G:/mnt/bc/mydev/working/j2me/MiniSpaceWars/MiniSpaceWars/dist/MiniSpaceWars.jar"))).show;
   end main;

end org.allbinary.logic.java.jar.JarUtil_Package;


