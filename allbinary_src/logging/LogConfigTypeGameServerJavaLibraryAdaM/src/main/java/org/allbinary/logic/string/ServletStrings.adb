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


package body org.allbinary.logic.string_Id.ServletStrings_Package is

   procedure Initialize_Fields (This : in out ServletStrings'Class) is
   begin
      null;
      This.DOPOST := To_Unbounded_String ("doPost");
      This.DOGET := To_Unbounded_String ("doGet");
      This.REQUEST_EXCEPTION := To_Unbounded_String ("Request Failed");
   end Initialize_Fields;

   procedure Initialize (This : in out ServletStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ServletStrings_Access is
      This : constant ServletStrings_Access := new ServletStrings;
   begin
      ServletStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ServletStrings_Access is
   begin
        return ServletStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := ServletStrings_Package.Create;

end org.allbinary.logic.string_Id.ServletStrings_Package;


