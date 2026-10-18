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



package body org.allbinary.logic.communication.http.request.RequestData_Package is

   procedure Initialize_Fields (This : in out RequestData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RequestData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RequestData_Access is
      This : constant RequestData_Access := new RequestData;
   begin
      RequestData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   REQUEST := To_Unbounded_String ("REQUESTDATA_REQUEST");
   PARAMETER := To_Unbounded_String ("REQUESTDATA_PARAMETER");
   VIEWS := To_Unbounded_String ("REQUESTDATA_VIEWS");
   VISITORS := To_Unbounded_String ("REQUESTDATA_VISITORS");

end org.allbinary.logic.communication.http.request.RequestData_Package;


