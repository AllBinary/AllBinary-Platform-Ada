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


package body org.allbinary.game.input.PlatformFormInputMappingFactory_Package is

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
      Initialize (This.all);
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
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
        end;
        return This.inputToGameKeyMapping;
   end getOrCreate;

   procedure getInstance is
      Java_Result : constant PlatformFormInputMappingFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getOrCreate (This : in out PlatformFormInputMappingFactory) is
      Java_Result : constant InputToGameKeyMapping_Access := PlatformFormInputMappingFactory'Class (This).getOrCreate;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrCreate;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.PlatformFormInputMappingFactory_Package;


