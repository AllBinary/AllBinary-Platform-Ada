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


package body org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package is

   procedure Initialize_Fields (This : in out BasicGenerator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGenerator'Class) is
   begin
      TransformInfoObjectConfigGenerator_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicGenerator_Access is
      This : constant BasicGenerator_Access := new BasicGenerator;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function process (This : in out BasicGenerator; input : Unbounded_String) return Unbounded_String is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Processing"), This'Unchecked_Access, This.commonStrings.PROCESS);
        end if;
        return input;
   end process;

   procedure process (This : in out BasicGenerator; input : Unbounded_String) is
      Java_Result : constant Unbounded_String := BasicGenerator'Class (This).process (input);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

end org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package;


