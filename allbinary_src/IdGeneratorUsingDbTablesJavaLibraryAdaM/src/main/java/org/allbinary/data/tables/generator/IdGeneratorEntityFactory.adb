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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package; use org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package;
with org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.data.tables.generator.IdGeneratorEntity_Package;
with org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype IdGeneratorEntityInterface_Access is org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References.IdGeneratorEntityInterface_Access;
   function "=" (Left, Right : IdGeneratorEntityInterface_Access) return Boolean renames org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References."=";
   subtype IdGeneratorEntityInterface_Access_Array is org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References.IdGeneratorEntityInterface_Access_Array;
   function "=" (Left, Right : IdGeneratorEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References."=";
   subtype IdGeneratorEntityInterface_Access_Array_Access is org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References.IdGeneratorEntityInterface_Access_Array_Access;
   function "=" (Left, Right : IdGeneratorEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References."=";
   subtype IdGeneratorEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References.IdGeneratorEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : IdGeneratorEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References."=";
   subtype IdGeneratorEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References.IdGeneratorEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IdGeneratorEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References."=";
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
      IdGeneratorEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return IdGeneratorEntityInterface_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            return IdGeneratorEntityInterface_Access (IdGeneratorEntity_Package.Create);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            logUtil.put (commonStrings.EXCEPTION_Id, Java_Box (To_Unbounded_String ("ServerLicenseRequestEntityFactory")), commonStrings.GET_INSTANCE, e);
            return null;
                end;
        end;
   end getInstance;

end org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package;


