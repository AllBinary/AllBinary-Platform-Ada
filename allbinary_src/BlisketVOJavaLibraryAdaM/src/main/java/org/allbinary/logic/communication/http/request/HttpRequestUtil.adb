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


package body org.allbinary.logic.communication.http.request.HttpRequestUtil_Package is

   procedure Initialize_Fields (This : in out HttpRequestUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return HttpRequestUtil_Access is
   begin
        return HttpRequestUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out HttpRequestUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HttpRequestUtil_Access is
      This : constant HttpRequestUtil_Access := new HttpRequestUtil;
   begin
      HttpRequestUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getLastSeparatorIndex (This : in out HttpRequestUtil; requestPath : Unbounded_String) return Integer is
      beginIndex : Integer;
   begin
        beginIndex := requestPath.lastIndexOf (AbPathData_Package.getInstance.SEPARATOR);
        if (beginIndex) < (0) then
            beginIndex := requestPath.lastIndexOf (To_Unbounded_String ("\"));
        end if;
        return beginIndex;
   end getLastSeparatorIndex;

   --  throws Exception
   function generateFileName (This : in out HttpRequestUtil; requestPath : Unbounded_String) return Unbounded_String is
      beginIndex : Integer;
   begin
        beginIndex := HttpRequestUtil'Class (This).getLastSeparatorIndex (requestPath);
        if (beginIndex) < (0) then
            return requestPath;
        else
            return Unbounded_Slice (requestPath, ((beginIndex) + (1)) + 1, Length (requestPath));
        end if;
   end generateFileName;

   procedure getLastSeparatorIndex (This : in out HttpRequestUtil; requestPath : Unbounded_String) is
      Java_Result : constant Integer := HttpRequestUtil'Class (This).getLastSeparatorIndex (requestPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLastSeparatorIndex;

   procedure generateFileName (This : in out HttpRequestUtil; requestPath : Unbounded_String) is
      Java_Result : constant Unbounded_String := HttpRequestUtil'Class (This).generateFileName (requestPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generateFileName;

begin
   null;
   instance := HttpRequestUtil_Package.Create;

end org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;


