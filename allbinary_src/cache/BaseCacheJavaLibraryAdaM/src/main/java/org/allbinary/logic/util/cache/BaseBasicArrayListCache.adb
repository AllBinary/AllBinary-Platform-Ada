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


package body org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package is

   procedure Initialize_Fields (This : in out BaseBasicArrayListCache'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out BaseBasicArrayListCache'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BaseBasicArrayListCache_Access is
      This : constant BaseBasicArrayListCache_Access := new BaseBasicArrayListCache;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function log (This : in out BaseBasicArrayListCache) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("S: "));
        stringBuffer.appendint (This.list.size);
        return stringBuffer.toString;
   end log;

   procedure log (This : in out BaseBasicArrayListCache) is
      Java_Result : constant Unbounded_String := BaseBasicArrayListCache'Class (This).log;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end log;

end org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package;


