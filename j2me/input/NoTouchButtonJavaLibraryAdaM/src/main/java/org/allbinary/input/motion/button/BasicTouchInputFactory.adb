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


package body org.allbinary.input.motion.button.BasicTouchInputFactory_Package is

   procedure Initialize_Fields (This : in out BasicTouchInputFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.SPECIAL_BUTTON_SIX := TouchButtonInput_Package.Create ((InputFactory_Package.getInstance.MAX) - (30), To_Unbounded_String ("Button 6"));
      This.SPECIAL_BUTTON_FIVE := TouchButtonInput_Package.Create ((InputFactory_Package.getInstance.MAX) - (31), To_Unbounded_String ("Button 5"));
      This.SPECIAL_BUTTON_FOUR := TouchButtonInput_Package.Create ((InputFactory_Package.getInstance.MAX) - (32), To_Unbounded_String ("Button 4"));
      This.SPECIAL_BUTTON_THREE := TouchButtonInput_Package.Create ((InputFactory_Package.getInstance.MAX) - (33), To_Unbounded_String ("Button 3"));
      This.SPECIAL_BUTTON_TWO := TouchButtonInput_Package.Create ((InputFactory_Package.getInstance.MAX) - (34), To_Unbounded_String ("Button 2"));
      This.SPECIAL_BUTTON_ONE := TouchButtonInput_Package.Create ((InputFactory_Package.getInstance.MAX) - (35), To_Unbounded_String ("Button 1"));
      This.UP := TouchButtonInput_Package.Create ((InputFactory_Package.getInstance.MAX) - (36), To_Unbounded_String ("Up Button"));
      This.LEFT := TouchButtonInput_Package.Create ((InputFactory_Package.getInstance.MAX) - (37), To_Unbounded_String ("Left Button"));
      This.RIGHT := TouchButtonInput_Package.Create ((InputFactory_Package.getInstance.MAX) - (38), To_Unbounded_String ("Right Button"));
      This.DOWN := TouchButtonInput_Package.Create ((InputFactory_Package.getInstance.MAX) - (39), To_Unbounded_String ("Down Button"));
      This.NONE := TouchButtonInput_Package.Create ((InputFactory_Package.getInstance.MAX) - (40), To_Unbounded_String ("No Button"));
      This.initialized := False;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicTouchInputFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicTouchInputFactory_Access is
      This : constant BasicTouchInputFactory_Access := new BasicTouchInputFactory;
   begin
      BasicTouchInputFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicTouchInputFactory_Access is
   begin
        if (BasicTouchInputFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            BasicTouchInputFactory_Package.instance := BasicTouchInputFactory_Package.Create;
        end if;
        return BasicTouchInputFactory_Access (BasicTouchInputFactory_Package.instance);
   end getInstance;

   procedure init (This : in out BasicTouchInputFactory; inputToGameKeyMapping_Param : access InputToGameKeyMapping'Class) is
      inputToGameKeyMapping : InputToGameKeyMapping_Access := InputToGameKeyMapping_Access (inputToGameKeyMapping_Param);
   begin
        if not (This.initialized) then
            This.initialized := True;
            This.list.add (This.UP);
            This.list.add (This.LEFT);
            This.list.add (This.RIGHT);
            This.list.add (This.DOWN);
            This.list.add (This.SPECIAL_BUTTON_TWO);
            This.list.add (This.SPECIAL_BUTTON_FOUR);
            This.list.add (This.SPECIAL_BUTTON_THREE);
            This.list.add (This.SPECIAL_BUTTON_ONE);
            This.list.add (This.SPECIAL_BUTTON_FIVE);
            This.list.add (This.SPECIAL_BUTTON_SIX);
            This.updateAllList (This.list, inputToGameKeyMapping);
        end if;
   end init;

   procedure updateAll (This : in out BasicTouchInputFactory; inputToGameKeyMapping_Param : access InputToGameKeyMapping'Class) is
      inputToGameKeyMapping : InputToGameKeyMapping_Access := InputToGameKeyMapping_Access (inputToGameKeyMapping_Param);
   begin
        This.updateAllList (This.getList, inputToGameKeyMapping);
   end updateAll;

   procedure updateAllList (This : in out BasicTouchInputFactory; list_Param : access BasicArrayList'Class; inputToGameKeyMapping_Param : access InputToGameKeyMapping'Class) is
      list : BasicArrayList_Access := BasicArrayList_Access (list_Param);
      inputToGameKeyMapping : InputToGameKeyMapping_Access := InputToGameKeyMapping_Access (inputToGameKeyMapping_Param);
      touchButtonInput : TouchButtonInput_Access;
      index : Integer;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START).appendint (list.size).toString, BasicTouchInputFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("updateAll"));
        for index in reverse 0 .. (list.size) - (1) loop
            touchButtonInput := TouchButtonInput_Access (list.get (index));
            touchButtonInput.update (inputToGameKeyMapping);
        end loop;
   end updateAllList;

   function getList (This : in out BasicTouchInputFactory) return BasicArrayList_Access is
   begin
        return This.list;
   end getList;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.motion.button.BasicTouchInputFactory_Package;


