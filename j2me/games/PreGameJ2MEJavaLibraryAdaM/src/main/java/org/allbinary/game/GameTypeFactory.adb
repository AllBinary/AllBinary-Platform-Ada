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


package body org.allbinary.game.GameTypeFactory_Package is

   procedure Initialize_Fields (This : in out GameTypeFactory'Class) is
   begin
      null;
      This.NULL_GAME_TYPE_ARRAY := new GameType_Access_Array'(0 .. (0) - 1 => null);
      This.NONE := GameType_Package.Create (StringUtil_Package.getInstance.NULL_STRING);
      This.SINGLE_PLAYER := GameType_Package.Create (To_Unbounded_String ("Single Player"));
      This.MULTI_PLAYER := GameType_Package.Create (To_Unbounded_String ("Multi Player"));
      This.BOT := GameType_Package.Create (To_Unbounded_String ("Artificial Player"));
   end Initialize_Fields;

   procedure Initialize (This : in out GameTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameTypeFactory_Access is
      This : constant GameTypeFactory_Access := new GameTypeFactory;
   begin
      GameTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameTypeFactory_Access is
   begin
        return GameTypeFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := GameTypeFactory_Package.Create;

end org.allbinary.game.GameTypeFactory_Package;


