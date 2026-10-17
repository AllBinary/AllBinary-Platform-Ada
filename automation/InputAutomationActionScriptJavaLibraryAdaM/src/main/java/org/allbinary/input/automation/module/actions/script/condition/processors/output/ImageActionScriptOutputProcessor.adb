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


package body org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package is

   procedure Initialize_Fields (This : in out ImageActionScriptOutputProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageActionScriptOutputProcessor'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageActionScriptOutputProcessor_Access is
      This : constant ImageActionScriptOutputProcessor_Access := new ImageActionScriptOutputProcessor;
   begin
      ImageActionScriptOutputProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (imageActionScriptOutputInterface_Param : access ImageActionScriptOutputInterface_Package.ImageActionScriptOutputInterface'Class; frame : Long_Long_Integer) is
      imageActionScriptOutputInterface : constant ImageActionScriptOutputInterface_Access := ImageActionScriptOutputInterface_Access (imageActionScriptOutputInterface_Param);
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      imageTypes : ImageTypes_Access;
      vector : BasicArrayList_Access;
      size : Integer;
      imageType : InputImageType_Access;
      imageIOInterface : ImageIOInterface_Access;
      index : Integer;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonStrings := CommonStrings_Package.getInstance;
        logUtil.putF (To_Unbounded_String ("Start - Processing at: ") & imageActionScriptOutputInterface.toString, To_Unbounded_String ("ImageActionScriptOutputProcessor"), commonStrings.PROCESS);
        imageTypes := imageActionScriptOutputInterface.getImageTypes;
        vector := imageTypes.getVector;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            imageType := InputImageType_Access (vector.get (index));
            imageIOInterface := InputImageIOInterfaceFactory_Package.getInstance (imageType);
            imageIOInterface.save (frame);
        end loop;
   end process;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package;


