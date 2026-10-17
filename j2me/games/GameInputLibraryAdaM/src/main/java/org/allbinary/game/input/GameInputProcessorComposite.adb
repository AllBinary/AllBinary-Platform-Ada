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


package body org.allbinary.game.input.GameInputProcessorComposite_Package is

   procedure Initialize_Fields (This : in out GameInputProcessorComposite'Class) is
   begin
      null;
      
      
      This.NAME_LABEL := To_Unbounded_String (" GameInputProcessorInterface: ");
   end Initialize_Fields;


   procedure Initialize (This : in out GameInputProcessorComposite'Class; name : Unbounded_String; gameInputProcessorInterface_Param : access GameInputProcessorInterface_Package.GameInputProcessorInterface'Class) is
      gameInputProcessorInterface : constant GameInputProcessorInterface_Access := GameInputProcessorInterface_Access (gameInputProcessorInterface_Param);
   begin
        PlayerGameInput_Package.Initialize (This, BasicArrayListD_Package.Create, BasicArrayListD_Package.Create, -(1));
        Initialize_Fields (This);
        This.name := name;
        This.gameInputProcessorInterface := gameInputProcessorInterface;
   end Initialize;

   function Create (name : Unbounded_String; gameInputProcessorInterface_Param : access GameInputProcessorInterface_Package.GameInputProcessorInterface'Class) return GameInputProcessorComposite_Access is
      This : constant GameInputProcessorComposite_Access := new GameInputProcessorComposite;
   begin
      GameInputProcessorComposite_Package.Initialize (This.all, name, gameInputProcessorInterface_Param);
      return This;
   end Create;

   procedure update (This : in out GameInputProcessorComposite) is
      list : BasicArrayList_Access;
   begin
        begin
            list := This.getGameKeyEventList;
            This.gameInputProcessorInterface.onInput (list);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, GameInputProcessorComposite_Access'(This'Unchecked_Access), This.commonStrings.UPDATE, e);
                end;
        end;
   end update;

   function toString (This : in out GameInputProcessorComposite) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (PlayerGameInput (This).toString).append (This.NAME_LABEL).append (This.name).toString;
   end toString;

end org.allbinary.game.input.GameInputProcessorComposite_Package;


