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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.GameInputProcessorInterface_Package; use org.allbinary.game.input.GameInputProcessorInterface_Package;
with org.allbinary.game.input.GameInputProcessorInterface_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputProcessorInterface_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.input.event.UpGameKeyEventListenerInterface_Package;

package body org.allbinary.game.input.GameInputProcessorComposite_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype GameInputProcessorInterface_Access is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access;
   function "=" (Left, Right : GameInputProcessorInterface_Access) return Boolean renames org.allbinary.game.input.GameInputProcessorInterface_Package_References."=";
   subtype GameInputProcessorInterface_Access_Array is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array;
   function "=" (Left, Right : GameInputProcessorInterface_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessorInterface_Package_References."=";
   subtype GameInputProcessorInterface_Access_Array_Access is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessorInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessorInterface_Package_References."=";
   subtype GameInputProcessorInterface_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputProcessorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessorInterface_Package_References."=";
   subtype GameInputProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessorInterface_Package_References."=";
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
            list := GameInputProcessorComposite'Class (This).getGameKeyEventList;
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
        return StringMaker_Package.Create.append (PlayerGameInput_Package.PlayerGameInput (This).toString).append (This.NAME_LABEL).append (This.name).toString;
   end toString;

end org.allbinary.game.input.GameInputProcessorComposite_Package;


