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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.tables.user.UserEntity_Package; use org.allbinary.data.tables.user.UserEntity_Package;
with org.allbinary.data.tables.user.UserEntity_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.data.tables.user.UserEntity_Package;
with org.allbinary.data.tables.user.UserEntityInterface_Package;

package body org.allbinary.data.tables.user.UserEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype UserEntity_Access is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access;
   function "=" (Left, Right : UserEntity_Access) return Boolean renames org.allbinary.data.tables.user.UserEntity_Package_References."=";
   subtype UserEntity_Access_Array is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access_Array;
   function "=" (Left, Right : UserEntity_Access_Array) return Boolean renames org.allbinary.data.tables.user.UserEntity_Package_References."=";
   subtype UserEntity_Access_Array_Access is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access_Array_Access;
   function "=" (Left, Right : UserEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.UserEntity_Package_References."=";
   subtype UserEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access_Array_Access_Array;
   function "=" (Left, Right : UserEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.UserEntity_Package_References."=";
   subtype UserEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.UserEntity_Package_References."=";
   procedure Initialize_Fields (This : in out UserEntityFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UserEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UserEntityFactory_Access is
      This : constant UserEntityFactory_Access := new UserEntityFactory;
   begin
      UserEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return UserEntity_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return UserEntity_Access (UserEntity_Package.Create);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                logUtil.put (commonStrings.EXCEPTION_Id, Java_Box (To_Unbounded_String ("UserEntityFactory")), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

end org.allbinary.data.tables.user.UserEntityFactory_Package;


