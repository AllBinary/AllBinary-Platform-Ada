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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package; use org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package;
with org.allbinary.input.media.image.InputImageType_Package; use org.allbinary.input.media.image.InputImageType_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.io.ImageIOInterface_Package; use org.allbinary.media.image.io.ImageIOInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package;
with org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;

package body org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package InputImageIOInterfaceFactory_Package renames Standard.org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package;
   package InputImageType_Package renames Standard.org.allbinary.input.media.image.InputImageType_Package;
   package ImageIOInterface_Package renames Standard.org.allbinary.media.image.io.ImageIOInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype ImageActionScriptOutputInterface_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access;
   function "=" (Left, Right : ImageActionScriptOutputInterface_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References."=";
   subtype ImageActionScriptOutputInterface_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array;
   function "=" (Left, Right : ImageActionScriptOutputInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References."=";
   subtype ImageActionScriptOutputInterface_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array_Access;
   function "=" (Left, Right : ImageActionScriptOutputInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References."=";
   subtype ImageActionScriptOutputInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ImageActionScriptOutputInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References."=";
   subtype ImageActionScriptOutputInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageActionScriptOutputInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References."=";
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
        logUtil.putF (To_Unbounded_String ("Start - Processing at: ") & Java_Object'Class (imageActionScriptOutputInterface.all).toString, Java_Box (To_Unbounded_String ("ImageActionScriptOutputProcessor")), commonStrings.PROCESS);
        imageTypes := imageActionScriptOutputInterface.getImageTypes;
        vector := imageTypes.getVector;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            imageType := InputImageType_Access (vector.get (index));
            imageIOInterface := ImageIOInterface_Access (InputImageIOInterfaceFactory_Package.getInstance (imageType));
            imageIOInterface.save (frame);
        end loop;
   end process;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package;


