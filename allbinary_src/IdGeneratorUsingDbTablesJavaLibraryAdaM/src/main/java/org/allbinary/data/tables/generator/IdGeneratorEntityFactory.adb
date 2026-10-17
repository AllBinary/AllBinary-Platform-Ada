-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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


package body org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package is

   procedure Initialize_Fields (This : in out IdGeneratorEntityFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out IdGeneratorEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return IdGeneratorEntityFactory_Access is
      This : constant IdGeneratorEntityFactory_Access := new IdGeneratorEntityFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return IdGeneratorEntityInterface_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            return IdGeneratorEntityInterface_Access (IdGeneratorEntity_Package.Create);
        exception
            when e : others =>
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("ServerLicenseRequestEntityFactory"), commonStrings.GET_INSTANCE, e);
            return null;
        end;
   end getInstance;

   procedure getInstance is
      Java_Result : constant IdGeneratorEntityInterface_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package;


