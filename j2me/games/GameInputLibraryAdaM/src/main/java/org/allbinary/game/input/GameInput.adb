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


package body org.allbinary.game.input.GameInput_Package is

   procedure Initialize_Fields (This : in out GameInput'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameInput'Class; gameKeyEventList : BasicArrayList_Access; removalGameKeyEventList : BasicArrayList_Access) is
   begin
      Initialize_Fields (This);
        This.gameKeyEventList := gameKeyEventList;
        This.removalGameKeyEventList := removalGameKeyEventList;
        This.isRemoveDuplicateKeyPresses := Features_Package.getInstance.isFeature (InputFeatureFactory_Package.getInstance.REMOVE_DUPLICATE_KEY_PRESSES);
   end Initialize;

   function Create (gameKeyEventList : BasicArrayList_Access; removalGameKeyEventList : BasicArrayList_Access) return GameInput_Access is
      This : constant GameInput_Access := new GameInput;
   begin
      GameInput_Package.Initialize (This.all, gameKeyEventList, removalGameKeyEventList);
      return This;
   end Create;

   procedure add (This : in out GameInput; gameKeyEvent : GameKeyEvent_Access) is
   begin
        if (This.isRemoveDuplicateKeyPresses) and then (This.gameKeyEventList.contains (gameKeyEvent)) then
            return;
        end if;
        if (gameKeyEvent) /= (null) then
            This.gameKeyEventList.add (gameKeyEvent);
        else
            This.logUtil.putF (To_Unbounded_String ("Danger Passed Null GameKeyEvent"), This'Unchecked_Access, This.commonStrings.ADD);
        end if;
   end add;

   procedure addForRemoval (This : in out GameInput; gameKeyEvent : GameKeyEvent_Access) is
   begin
        This.removalGameKeyEventList.add (gameKeyEvent);
   end addForRemoval;

   function isForRemoval (This : in out GameInput; gameKeyEvent : GameKeyEvent_Access) return Boolean is
   begin
        return This.removalGameKeyEventList.contains (gameKeyEvent);
   end isForRemoval;

   procedure clear (This : in out GameInput) is
   begin
        This.gameKeyEventList.clear;
   end clear;

   procedure removeNonAIInputGameKeyEvents (This : in out GameInput) is
      list : BasicArrayList_Access;
      gameKeyEvent : GameKeyEvent_Access;
      index : Integer;
   begin
        list := This.gameKeyEventList;
        gameKeyEvent := null;
        index := list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            gameKeyEvent := GameKeyEvent_Access (list.objectArray (index));
            if (gameKeyEvent.getSourceId) /= (1) then
                list.removeAt (index);
            end if;
        end loop;
   end removeNonAIInputGameKeyEvents;

   procedure update (This : in out GameInput) is
      removeList : BasicArrayList_Access;
      list : BasicArrayList_Access;
      size : Integer;
      anyType : Java_Object_Access;
      index2 : Integer;
      index : Integer;
   begin
        removeList := This.removalGameKeyEventList;
        list := This.gameKeyEventList;
        size := removeList.size;
        for index in 0 .. (size) - 1 loop
            anyType := removeList.objectArray (index);
            index2 := list.size;
            while (Java_Pre_Decrement (index2)) >= (0) loop
                if (list.objectArray (index2)) = (anyType) then
                    list.removeAt (index2);
                end if;
            end loop;
        end loop;
        removeList.clear;
   end update;

   function getRemovalGameKeyEventList (This : in out GameInput) return BasicArrayList_Access is
   begin
        return This.removalGameKeyEventList;
   end getRemovalGameKeyEventList;

   function getGameKeyEventList (This : in out GameInput) return BasicArrayList_Access is
   begin
        return This.gameKeyEventList;
   end getGameKeyEventList;

   procedure isForRemoval (This : in out GameInput; gameKeyEvent : GameKeyEvent_Access) is
      Java_Result : constant Boolean := GameInput'Class (This).isForRemoval (gameKeyEvent);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isForRemoval;

end org.allbinary.game.input.GameInput_Package;


