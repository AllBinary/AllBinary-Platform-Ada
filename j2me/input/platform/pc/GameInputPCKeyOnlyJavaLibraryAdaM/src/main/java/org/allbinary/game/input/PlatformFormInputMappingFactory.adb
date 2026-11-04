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


with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.input.PCKeyFactory_Package; use org.allbinary.game.input.PCKeyFactory_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;

package body org.allbinary.game.input.PlatformFormInputMappingFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype InputToGameKeyMapping_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
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
   procedure Initialize_Fields (This : in out PlatformFormInputMappingFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.inputToGameKeyMapping := InputToGameKeyMapping_Package.getNullInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out PlatformFormInputMappingFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlatformFormInputMappingFactory_Access is
      This : constant PlatformFormInputMappingFactory_Access := new PlatformFormInputMappingFactory;
   begin
      PlatformFormInputMappingFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PlatformFormInputMappingFactory_Access is
   begin
        if (PlatformFormInputMappingFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            PlatformFormInputMappingFactory_Package.instance := PlatformFormInputMappingFactory_Package.Create;
        end if;
        return PlatformFormInputMappingFactory_Access (PlatformFormInputMappingFactory_Package.instance);
   end getInstance;

   function getOrCreate (This : in out PlatformFormInputMappingFactory) return InputToGameKeyMapping_Access is
      pcKeyFactory : PCKeyFactory_Access;
      inputToGameKeyMapping : InputToGameKeyMapping_Access;
      gameKeyFactory : GameKeyFactory_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            if (This.inputToGameKeyMapping) = (InputToGameKeyMapping_Package.getNullInstance) then
                pcKeyFactory := PCKeyFactory_Package.getInstance;
                inputToGameKeyMapping := InputToGameKeyMapping_Package.Create;
                gameKeyFactory := GameKeyFactory_Package.getInstance;
                inputToGameKeyMapping.add (gameKeyFactory.UP, pcKeyFactory.DPAD_UP);
                inputToGameKeyMapping.add (gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN);
                inputToGameKeyMapping.add (gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT);
                inputToGameKeyMapping.add (gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT);
                inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, pcKeyFactory.ENTER);
                This.inputToGameKeyMapping := inputToGameKeyMapping;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, PlatformFormInputMappingFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
                end;
        end;
        return This.inputToGameKeyMapping;
   end getOrCreate;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.PlatformFormInputMappingFactory_Package;


