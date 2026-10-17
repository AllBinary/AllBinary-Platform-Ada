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


package body org.allbinary.logic.communication.http.AcceptableResponseFactory_Package is

   procedure Initialize_Fields (This : in out AcceptableResponseFactory'Class) is
   begin
      null;
      This.HTML := AcceptableResponse_Package.Create (To_Unbounded_String ("text/html"), To_Unbounded_String ("html"), 0);
      This.WML := AcceptableResponse_Package.Create (To_Unbounded_String ("text/wml"), To_Unbounded_String ("wml"), 1);
      This.VXML := AcceptableResponse_Package.Create (To_Unbounded_String ("text/vxml"), To_Unbounded_String ("vxml"), 2);
   end Initialize_Fields;

   procedure Initialize (This : in out AcceptableResponseFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AcceptableResponseFactory_Access is
      This : constant AcceptableResponseFactory_Access := new AcceptableResponseFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return AcceptableResponseFactory_Access is
   begin
        return AcceptableResponseFactory_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant AcceptableResponseFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := AcceptableResponseFactory_Package.Create;

end org.allbinary.logic.communication.http.AcceptableResponseFactory_Package;


