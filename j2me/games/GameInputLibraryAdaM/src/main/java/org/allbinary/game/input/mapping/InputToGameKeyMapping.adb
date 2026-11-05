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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKey_Package_References;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.GameKeyFactory_Package_References;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.GameKey_Package_References;
with org.allbinary.game.input.Input_Package_References;

package body org.allbinary.game.input.mapping.InputToGameKeyMapping_Package is

   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   function "=" (Left, Right : Canvas_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype GameKey_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access;
   function "=" (Left, Right : GameKey_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array;
   function "=" (Left, Right : GameKey_Access_Array) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access;
   function "=" (Left, Right : GameKey_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array;
   function "=" (Left, Right : GameKey_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKey_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKeyFactory_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access;
   function "=" (Left, Right : GameKeyFactory_Access) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";
   subtype GameKeyFactory_Access_Array is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array;
   function "=" (Left, Right : GameKeyFactory_Access_Array) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";
   subtype GameKeyFactory_Access_Array_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access;
   function "=" (Left, Right : GameKeyFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";
   subtype GameKeyFactory_Access_Array_Access_Array is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";
   subtype GameKeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";
   subtype Input_Access is org.allbinary.game.input.Input_Package_References.Input_Access;
   function "=" (Left, Right : Input_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array;
   function "=" (Left, Right : Input_Access_Array) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access;
   function "=" (Left, Right : Input_Access_Array_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array;
   function "=" (Left, Right : Input_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Input_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out InputToGameKeyMapping'Class) is
   begin
      null;
      This.gameKeyFactory := GameKeyFactory_Package.getInstance;
      This.mappedGameKeys := new GameKey_Access_Array'(This.gameKeyFactory.UP, This.gameKeyFactory.DOWN, This.gameKeyFactory.LEFT, This.gameKeyFactory.RIGHT);
      This.platformToGameKeyMapping := new GameKey_Access_Array'(0 .. (InputFactory_Package.getInstance.MAX) - 1 => null);
      This.negativePlatformToGameKeyMapping := new GameKey_Access_Array'(0 .. (0) - 1 => null);
   end Initialize_Fields;


   function getNullInstance return InputToGameKeyMapping_Access is
   begin
        if (InputToGameKeyMapping_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            InputToGameKeyMapping_Package.instance := InputToGameKeyMapping_Package.Create;
        end if;
        return InputToGameKeyMapping_Access (InputToGameKeyMapping_Package.instance);
   end getNullInstance;

   procedure Initialize (This : in out InputToGameKeyMapping'Class) is
   begin
      InputMapping_Package.Initialize (This);
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, InputToGameKeyMapping_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        InputToGameKeyMapping'Class (This).clear;
   end Initialize;

   function Create return InputToGameKeyMapping_Access is
      This : constant InputToGameKeyMapping_Access := new InputToGameKeyMapping;
   begin
      InputToGameKeyMapping_Package.Initialize (This.all);
      return This;
   end Create;

   procedure clear (This : in out InputToGameKeyMapping) is
      index : Integer;
   begin
        for index in reverse 0 .. (This.platformToGameKeyMapping'Length) - (1) loop
            This.platformToGameKeyMapping (index) := GameKey_Access (This.gameKeyFactory.NONE);
        end loop;
   end clear;

   procedure removeAll (This : in out InputToGameKeyMapping) is
   begin
        InputMapping_Package.InputMapping (This).removeAll;
        InputToGameKeyMapping'Class (This).clear;
   end removeAll;

   procedure addMapping (This : in out InputToGameKeyMapping; inputToGameKeyMapping_Var_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class) is
      inputToGameKeyMapping_Var : constant InputToGameKeyMapping_Access := InputToGameKeyMapping_Access (inputToGameKeyMapping_Var_Param);
      input : Input_Access;
      index : Integer;
   begin
        for index in reverse 0 .. (inputToGameKeyMapping_Var.getMaxMappable) - (1) loop
            input := inputToGameKeyMapping_Var.getInstance (index);
            if (Java_Object_Access (input)) /= (Java_Object_Access (This.gameKeyFactory.NONE)) then
                InputToGameKeyMapping'Class (This).addAll (input, inputToGameKeyMapping_Var.getMappedInput (input));
            end if;
        end loop;
   end addMapping;

   procedure addAll (This : in out InputToGameKeyMapping; input_Param : access Input_Package.Input'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      input : constant Input_Access := Input_Access (input_Param);
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      mappedToInput : Input_Access;
      index : Integer;
   begin
        for index in reverse 0 .. (list.size) - (1) loop
            mappedToInput := Input_Access (list.objectArray (index));
            InputToGameKeyMapping'Class (This).add (input, mappedToInput);
        end loop;
   end addAll;

   procedure add (This : in out InputToGameKeyMapping; input_Param : access Input_Package.Input'Class; mappedToInput_Param : access Input_Package.Input'Class) is
      input : constant Input_Access := Input_Access (input_Param);
      mappedToInput : constant Input_Access := Input_Access (mappedToInput_Param);
   begin
        InputMapping_Package.InputMapping (This).add (input, mappedToInput);
        InputToGameKeyMapping'Class (This).set (input, mappedToInput);
   end add;

   procedure remove (This : in out InputToGameKeyMapping; input_Param : access Input_Package.Input'Class; mappedToInput_Param : access Input_Package.Input'Class) is
      input : constant Input_Access := Input_Access (input_Param);
      mappedToInput : constant Input_Access := Input_Access (mappedToInput_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (StringUtil_Package.getInstance.toString (input)).append (To_Unbounded_String (" == ")).append (StringUtil_Package.getInstance.toString (mappedToInput)).toString, InputToGameKeyMapping_Access'(This'Unchecked_Access), To_Unbounded_String ("InputToGameKeyMapping::remove"));
        InputMapping_Package.InputMapping (This).remove (input, mappedToInput);
        InputToGameKeyMapping'Class (This).set (input, This.gameKeyFactory.NONE);
   end remove;

   procedure set (This : in out InputToGameKeyMapping; input_Param : access Input_Package.Input'Class; mappedToInput_Param : access Input_Package.Input'Class) is
      input : constant Input_Access := Input_Access (input_Param);
      mappedToInput : constant Input_Access := Input_Access (mappedToInput_Param);
      id : Integer;
   begin
        id := mappedToInput.getId;
        if ((id) >= (0)) and then ((id) < (This.platformToGameKeyMapping'Length)) then
            This.platformToGameKeyMapping (id) := GameKey_Access (input);
        end if;
   end set;

   function getMaxMappable (This : in out InputToGameKeyMapping) return Integer is
   begin
        return This.platformToGameKeyMapping'Length;
   end getMaxMappable;

   function getReverseInstance (This : in out InputToGameKeyMapping; id : Integer) return BasicArrayList_Access is
      list : BasicArrayList_Access;
      inputFactory : InputFactory_Access;
      input : Input_Access;
      index : Integer;
   begin
        list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        inputFactory := InputFactory_Package.getInstance;
        for index in 0 .. (This.platformToGameKeyMapping'Length) - 1 loop
            if (This.platformToGameKeyMapping (index).getId) = (id) then
                input := inputFactory.getInstanceById (index);
                if (not org.allbinary.game.input.Input_Package_References."=" (input, null)) then
                    list.add (Java_Object_Access (input));
                end if;
            end if;
        end loop;
        return list;
   end getReverseInstance;

   --  throws Exception
   procedure initGameKey (This : in out InputToGameKeyMapping; canvas_Param : access Canvas_Package.Canvas'Class; gameKey_Param : access GameKey_Package.GameKey'Class) is
      canvas : constant Canvas_Access := Canvas_Access (canvas_Param);
      gameKey : constant GameKey_Access := GameKey_Access (gameKey_Param);
      key : Integer;
   begin
        key := canvas.getKeyCode (gameKey.getId);
        if ((key) < (0)) and then ((-(key)) < (This.negativePlatformToGameKeyMapping'Length)) then
            This.negativePlatformToGameKeyMapping (-(key)) := gameKey;
        elsif (key) > (0) then
            if org.allbinary.game.input.GameKey_Package_References."=" (This.platformToGameKeyMapping (key), This.gameKeyFactory.NONE) then
                This.platformToGameKeyMapping (key) := gameKey;
            end if;
        else
            PreLogUtil_Package.putOE (StringMaker_Package.Create.append (gameKey.toString).append (CommonSeps_Package.getInstance.COLON_SEP).appendint (key).toString, InputToGameKeyMapping_Access'(This'Unchecked_Access), This.commonStrings.INIT, Java_New_Exception ("Exception"));
        end if;
   end initGameKey;

   --  throws Exception
   function getSmallestCanvasGameKeyCode (This : in out InputToGameKeyMapping; canvas_Param : access Canvas_Package.Canvas'Class) return Integer is
      canvas : constant Canvas_Access := Canvas_Access (canvas_Param);
      nextKey : Integer;
      smallestKey : Integer;
      index : Integer;
   begin
        nextKey := 0;
        smallestKey := 0;
        index := This.mappedGameKeys'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            nextKey := canvas.getKeyCode (This.mappedGameKeys (index).getId);
            if (nextKey) < (smallestKey) then
                smallestKey := nextKey;
            end if;
        end loop;
        return smallestKey;
   end getSmallestCanvasGameKeyCode;

   procedure init (This : in out InputToGameKeyMapping; canvas_Param : access Canvas_Package.Canvas'Class) is
      canvas : constant Canvas_Access := Canvas_Access (canvas_Param);
      negativePlatformToGameKeyMapping : GameKey_Access_Array_Access;
      smallestKey : Integer;
      index : Integer;
   begin
        begin
            negativePlatformToGameKeyMapping := new GameKey_Access_Array'(0 .. (0) - 1 => null);
            smallestKey := InputToGameKeyMapping'Class (This).getSmallestCanvasGameKeyCode (canvas);
            if (smallestKey) < (0) then
                smallestKey := smallestKey - 1;
                if (smallestKey) < (-(256)) then
                    smallestKey := -(256);
                end if;
                negativePlatformToGameKeyMapping := new GameKey_Access_Array'(0 .. (-(smallestKey)) - 1 => null);
                index := negativePlatformToGameKeyMapping'Length;
                while (Java_Pre_Decrement (index)) >= (0) loop
                    negativePlatformToGameKeyMapping (index) := GameKey_Access (This.gameKeyFactory.NONE);
                end loop;
                This.negativePlatformToGameKeyMapping := negativePlatformToGameKeyMapping;
            end if;
            index := This.mappedGameKeys'Length;
            while (Java_Pre_Decrement (index)) >= (0) loop
                InputToGameKeyMapping'Class (This).initGameKey (canvas, This.mappedGameKeys (index));
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    t : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputToGameKeyMapping_Access'(This'Unchecked_Access), This.commonStrings.INIT, t);
                end;
        end;
   end init;

   function getInstanceForCanvas (This : in out InputToGameKeyMapping; canvas_Param : access Canvas_Package.Canvas'Class; id : Integer) return GameKey_Access is
      canvas : constant Canvas_Access := Canvas_Access (canvas_Param);
   begin
        if ((id) >= (0)) and then ((id) < (This.platformToGameKeyMapping'Length)) then
            return This.platformToGameKeyMapping (id);
        elsif ((id) < (0)) and then ((-(id)) < (This.negativePlatformToGameKeyMapping'Length)) then
            return This.negativePlatformToGameKeyMapping (-(id));
        else
            return GameKey_Access (This.gameKeyFactory.NONE);
        end if;
   end getInstanceForCanvas;

   function getInstance (This : in out InputToGameKeyMapping; id : Integer) return GameKey_Access is
   begin
        if ((id) >= (0)) and then ((id) < (This.platformToGameKeyMapping'Length)) then
            return This.platformToGameKeyMapping (id);
        elsif ((id) < (0)) and then ((-(id)) < (This.negativePlatformToGameKeyMapping'Length)) then
            return This.negativePlatformToGameKeyMapping (-(id));
        else
            return GameKey_Access (This.gameKeyFactory.NONE);
        end if;
   end getInstance;

   procedure getReverseInstance (This : in out InputToGameKeyMapping; id : Integer) is
      Java_Result : constant BasicArrayList_Access := InputToGameKeyMapping'Class (This).getReverseInstance (id => id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getReverseInstance;

   procedure getSmallestCanvasGameKeyCode (This : in out InputToGameKeyMapping; canvas_Param : access Canvas_Package.Canvas'Class) is
      Java_Result : constant Integer := InputToGameKeyMapping'Class (This).getSmallestCanvasGameKeyCode (canvas_Param => canvas_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSmallestCanvasGameKeyCode;

   procedure getInstanceForCanvas (This : in out InputToGameKeyMapping; canvas_Param : access Canvas_Package.Canvas'Class; id : Integer) is
      Java_Result : constant GameKey_Access := InputToGameKeyMapping'Class (This).getInstanceForCanvas (canvas_Param => canvas_Param, id => id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForCanvas;

   procedure getInstance (This : in out InputToGameKeyMapping; id : Integer) is
      Java_Result : constant GameKey_Access := InputToGameKeyMapping'Class (This).getInstance (id => id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;


