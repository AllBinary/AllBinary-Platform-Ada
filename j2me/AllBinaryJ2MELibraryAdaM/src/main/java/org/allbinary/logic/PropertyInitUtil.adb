-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


package body org.allbinary.logic.PropertyInitUtil_Package is

   procedure Initialize_Fields (This : in out PropertyInitUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PropertyInitUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PropertyInitUtil_Access is
      This : constant PropertyInitUtil_Access := new PropertyInitUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance (value : Integer) return PropertyInitUtil_Access is
      commonStrings : CommonStrings_Access;
      logUtil : LogUtil_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        logUtil := LogUtil_Package.getInstance;
        logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("PropertyInitUtil: ")).appendint (value).toString, logUtil, commonStrings.CONSTRUCTOR);
        return PropertyInitUtil_Package.instance;
   end getInstance;

   procedure getInstance (value : Integer) is
      Java_Result : constant PropertyInitUtil_Access := getInstance (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := PropertyInitUtil_Package.Create;

end org.allbinary.logic.PropertyInitUtil_Package;


