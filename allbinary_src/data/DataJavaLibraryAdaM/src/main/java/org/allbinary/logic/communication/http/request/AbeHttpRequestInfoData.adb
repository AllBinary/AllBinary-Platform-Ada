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



package body org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package is

   procedure Initialize_Fields (This : in out AbeHttpRequestInfoData'Class) is
   begin
      null;
      This.HTTP_USER_AGENT := To_Unbounded_String ("HTTP_USER_AGENT");
      This.REMOTE_ADDRESS := To_Unbounded_String ("REMOTE_ADDRESS");
      This.REMOTE_HOST := To_Unbounded_String ("REMOTE_HOST");
      This.REMOTE_HOST_BY_ADDRESS := To_Unbounded_String ("REMOTE_HOST_BY_ADDRESS");
      This.REMOTE_PORT := To_Unbounded_String ("REMOTE_PORT");
      This.REQUEST_FILE_PATH := To_Unbounded_String ("REQUEST_FILE_PATH");
   end Initialize_Fields;


   function getInstance return AbeHttpRequestInfoData_Access is
   begin
        return AbeHttpRequestInfoData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AbeHttpRequestInfoData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbeHttpRequestInfoData_Access is
      This : constant AbeHttpRequestInfoData_Access := new AbeHttpRequestInfoData;
   begin
      AbeHttpRequestInfoData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := AbeHttpRequestInfoData_Package.Create;

end org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package;


