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


package body org.allbinary.logic.communication.http.request.NameSpaceRequestParamData_Package is

   procedure Initialize_Fields (This : in out NameSpaceRequestParamData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NameSpaceRequestParamData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NameSpaceRequestParamData_Access is
      This : constant NameSpaceRequestParamData_Access := new NameSpaceRequestParamData;
   begin
      NameSpaceRequestParamData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("NAMESPACE_REQUESTDATA_NAME");
   VALUE := To_Unbounded_String ("INPUT_VALUE");
   PROPERTIES := To_Unbounded_String ("_PROPERTIES_");
   SEP := To_Unbounded_String ("_DOT_");
   PROPERTIESSEPARATOR := To_Unbounded_String ("_PROPDOT_");
   DOCUMENT := To_Unbounded_String ("NAMESPACE_REQUESTDATA_DOCUMENT");

end org.allbinary.logic.communication.http.request.NameSpaceRequestParamData_Package;


