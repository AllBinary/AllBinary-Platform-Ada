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


with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.input.LaptopGameInputMapping_Package; use org.allbinary.game.input.LaptopGameInputMapping_Package;
with org.allbinary.game.input.LaptopGameInputMapping_Package;
with org.allbinary.game.input.PCGameInputMapping_Package;

package body org.allbinary.game.input.PlatformInputMappingFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype PersistentInputMapping_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access;
   function "=" (Left, Right : PersistentInputMapping_Access) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";
   subtype PersistentInputMapping_Access_Array is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array;
   function "=" (Left, Right : PersistentInputMapping_Access_Array) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";
   subtype PersistentInputMapping_Access_Array_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access;
   function "=" (Left, Right : PersistentInputMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";
   subtype PersistentInputMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access_Array;
   function "=" (Left, Right : PersistentInputMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";
   subtype PersistentInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PersistentInputMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";
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
   procedure Initialize_Fields (This : in out PlatformInputMappingFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.inputToGameKeyMapping := PersistentInputMapping_Package.getNullInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out PlatformInputMappingFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlatformInputMappingFactory_Access is
      This : constant PlatformInputMappingFactory_Access := new PlatformInputMappingFactory;
   begin
      PlatformInputMappingFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PlatformInputMappingFactory_Access is
   begin
        return PlatformInputMappingFactory_Access (PlatformInputMappingFactory_Package.instance);
   end getInstance;

   function getPersistentInputMappingInstance (This : in out PlatformInputMappingFactory) return PersistentInputMapping_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            if (This.inputToGameKeyMapping) = (PersistentInputMapping_Package.getNullInstance) then
                This.inputToGameKeyMapping := PersistentInputMapping_Access (LaptopGameInputMapping_Package.Create);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, PlatformInputMappingFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
                end;
        end;
        return This.inputToGameKeyMapping;
   end getPersistentInputMappingInstance;

begin
   null;
   instance := PlatformInputMappingFactory_Package.Create;

end org.allbinary.game.input.PlatformInputMappingFactory_Package;


