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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;

package body org.allbinary.game.input.PlatformFormInputMappingFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
      inputToGameKeyMapping : InputToGameKeyMapping_Access;
      gameKeyFactory : GameKeyFactory_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            if (This.inputToGameKeyMapping) = (InputToGameKeyMapping_Package.getNullInstance) then
                inputToGameKeyMapping := InputToGameKeyMapping_Package.Create;
                gameKeyFactory := GameKeyFactory_Package.getInstance;
                inputToGameKeyMapping.add (gameKeyFactory.UP, gameKeyFactory.UP);
                inputToGameKeyMapping.add (gameKeyFactory.DOWN, gameKeyFactory.DOWN);
                inputToGameKeyMapping.add (gameKeyFactory.LEFT, gameKeyFactory.LEFT);
                inputToGameKeyMapping.add (gameKeyFactory.RIGHT, gameKeyFactory.RIGHT);
                inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, gameKeyFactory.GAME_A);
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


