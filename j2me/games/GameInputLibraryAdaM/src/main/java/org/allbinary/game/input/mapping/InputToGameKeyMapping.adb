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


package body org.allbinary.game.input.mapping.InputToGameKeyMapping_Package is

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
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        This.clear;
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
            This.platformToGameKeyMapping (index) := This.gameKeyFactory.NONE;
        end loop;
   end clear;

   procedure removeAll (This : in out InputToGameKeyMapping) is
   begin
        InputMapping (This).removeAll;
        This.clear;
   end removeAll;

   procedure addMapping (This : in out InputToGameKeyMapping; inputToGameKeyMapping : InputToGameKeyMapping_Access) is
      input : Input_Access;
      index : Integer;
   begin
        for index in reverse 0 .. (inputToGameKeyMapping.getMaxMappable) - (1) loop
            input := inputToGameKeyMapping.getInstance (index);
            if (input) /= (This.gameKeyFactory.NONE) then
                This.addAll (input, inputToGameKeyMapping.getMappedInput (input));
            end if;
        end loop;
   end addMapping;

   procedure addAll (This : in out InputToGameKeyMapping; input : Input_Access; list : BasicArrayList_Access) is
      mappedToInput : Input_Access;
      index : Integer;
   begin
        for index in reverse 0 .. (list.size) - (1) loop
            mappedToInput := Input_Access (list.objectArray (index));
            This.add (input, mappedToInput);
        end loop;
   end addAll;

   procedure add (This : in out InputToGameKeyMapping; input : Input_Access; mappedToInput : Input_Access) is
   begin
        InputMapping (This).add (input, mappedToInput);
        This.set (input, mappedToInput);
   end add;

   procedure remove (This : in out InputToGameKeyMapping; input : Input_Access; mappedToInput : Input_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (StringUtil_Package.getInstance.toString (input)).append (To_Unbounded_String (" == ")).append (StringUtil_Package.getInstance.toString (mappedToInput)).toString, This'Unchecked_Access, To_Unbounded_String ("InputToGameKeyMapping::remove"));
        InputMapping (This).remove (input, mappedToInput);
        This.set (input, This.gameKeyFactory.NONE);
   end remove;

   procedure set (This : in out InputToGameKeyMapping; input : Input_Access; mappedToInput : Input_Access) is
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
        list := BasicArrayListD_Package.Create;
        inputFactory := InputFactory_Package.getInstance;
        for index in 0 .. (This.platformToGameKeyMapping'Length) - 1 loop
            if (This.platformToGameKeyMapping (index).getId) = (id) then
                input := inputFactory.getInstanceById (index);
                if (input) /= (null) then
                    list.add (input);
                end if;
            end if;
        end loop;
        return list;
   end getReverseInstance;

   --  throws Exception
   procedure initGameKey (This : in out InputToGameKeyMapping; canvas : Canvas_Access; gameKey : GameKey_Access) is
      key : Integer;
   begin
        key := canvas.getKeyCode (gameKey.getId);
        if ((key) < (0)) and then ((-(key)) < (This.negativePlatformToGameKeyMapping'Length)) then
            This.negativePlatformToGameKeyMapping (-(key)) := gameKey;
        elsif (key) > (0) then
            if (This.platformToGameKeyMapping (key)) = (This.gameKeyFactory.NONE) then
                This.platformToGameKeyMapping (key) := gameKey;
            end if;
        else
            PreLogUtil_Package.putOE (StringMaker_Package.Create.append (gameKey.toString).append (CommonSeps_Package.getInstance.COLON_SEP).appendint (key).toString, This'Unchecked_Access, This.commonStrings.INIT, Java_New_Exception ("Exception"));
        end if;
   end initGameKey;

   --  throws Exception
   function getSmallestCanvasGameKeyCode (This : in out InputToGameKeyMapping; canvas : Canvas_Access) return Integer is
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

   procedure init (This : in out InputToGameKeyMapping; canvas : Canvas_Access) is
      negativePlatformToGameKeyMapping : GameKey_Access_Array_Access;
      smallestKey : Integer;
      index : Integer;
   begin
        begin
            negativePlatformToGameKeyMapping := new GameKey_Access_Array'(0 .. (0) - 1 => null);
            smallestKey := This.getSmallestCanvasGameKeyCode (canvas);
            if (smallestKey) < (0) then
                smallestKey := smallestKey - 1;
                if (smallestKey) < (-(256)) then
                    smallestKey := -(256);
                end if;
                negativePlatformToGameKeyMapping := new GameKey_Access_Array'(0 .. (-(smallestKey)) - 1 => null);
                index := negativePlatformToGameKeyMapping'Length;
                while (Java_Pre_Decrement (index)) >= (0) loop
                    negativePlatformToGameKeyMapping (index) := This.gameKeyFactory.NONE;
                end loop;
                This.negativePlatformToGameKeyMapping := negativePlatformToGameKeyMapping;
            end if;
            index := This.mappedGameKeys'Length;
            while (Java_Pre_Decrement (index)) >= (0) loop
                This.initGameKey (canvas, This.mappedGameKeys (index));
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    t : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.INIT, t);
                end;
        end;
   end init;

   function getInstanceForCanvas (This : in out InputToGameKeyMapping; canvas : Canvas_Access; id : Integer) return GameKey_Access is
   begin
        if ((id) >= (0)) and then ((id) < (This.platformToGameKeyMapping'Length)) then
            return This.platformToGameKeyMapping (id);
        elsif ((id) < (0)) and then ((-(id)) < (This.negativePlatformToGameKeyMapping'Length)) then
            return This.negativePlatformToGameKeyMapping (-(id));
        else
            return This.gameKeyFactory.NONE;
        end if;
   end getInstanceForCanvas;

   function getInstance (This : in out InputToGameKeyMapping; id : Integer) return GameKey_Access is
   begin
        if ((id) >= (0)) and then ((id) < (This.platformToGameKeyMapping'Length)) then
            return This.platformToGameKeyMapping (id);
        elsif ((id) < (0)) and then ((-(id)) < (This.negativePlatformToGameKeyMapping'Length)) then
            return This.negativePlatformToGameKeyMapping (-(id));
        else
            return This.gameKeyFactory.NONE;
        end if;
   end getInstance;

   procedure getReverseInstance (This : in out InputToGameKeyMapping; id : Integer) is
      Java_Result : constant BasicArrayList_Access := InputToGameKeyMapping'Class (This).getReverseInstance (id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getReverseInstance;

   procedure getSmallestCanvasGameKeyCode (This : in out InputToGameKeyMapping; canvas : Canvas_Access) is
      Java_Result : constant Integer := InputToGameKeyMapping'Class (This).getSmallestCanvasGameKeyCode (canvas);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSmallestCanvasGameKeyCode;

   procedure getInstanceForCanvas (This : in out InputToGameKeyMapping; canvas : Canvas_Access; id : Integer) is
      Java_Result : constant GameKey_Access := InputToGameKeyMapping'Class (This).getInstanceForCanvas (canvas, id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForCanvas;

   procedure getInstance (This : in out InputToGameKeyMapping; id : Integer) is
      Java_Result : constant GameKey_Access := InputToGameKeyMapping'Class (This).getInstance (id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;


