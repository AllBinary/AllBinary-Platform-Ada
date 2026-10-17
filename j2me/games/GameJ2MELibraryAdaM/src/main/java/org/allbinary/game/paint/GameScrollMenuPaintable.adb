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


package body org.allbinary.game.paint.GameScrollMenuPaintable_Package is

   procedure Initialize_Fields (This : in out GameScrollMenuPaintable'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GameScrollMenuPaintable'Class; mainDemoStatePaintable : Paintable_Access; ownershipPaintable : Paintable_Access; helpPaintableInterface : Paintable_Access; basicColor : BasicColor_Access) is
   begin
        BasicGameDemoPaintable_Package.Initialize (This, mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface);
        This.setColor (basicColor);
        ColorChangeEventHandler_Package.getInstance.addListenerInterface (This'Unchecked_Access);
   end Initialize;

   function Create (mainDemoStatePaintable : Paintable_Access; ownershipPaintable : Paintable_Access; helpPaintableInterface : Paintable_Access; basicColor : BasicColor_Access) return GameScrollMenuPaintable_Access is
      This : constant GameScrollMenuPaintable_Access := new GameScrollMenuPaintable;
   begin
      GameScrollMenuPaintable_Package.Initialize (This.all, mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface, basicColor);
      return This;
   end Create;

   procedure setState (This : in out GameScrollMenuPaintable; state : Integer) is
   begin
        This.setCurrentStatePaintable (This.getMainDemoStatePaintable);
   end setState;

   procedure onEvent (This : in out GameScrollMenuPaintable; eventObject : AllBinaryEventObject_Access) is
   begin
        null;
   end onEvent;

   procedure setColor (This : in out GameScrollMenuPaintable; basicColor : BasicColor_Access) is
      mainGameDemoStatePaintable : MainGameDemoStatePaintable_Access;
      formPaintable : FormPaintable_Access;
      scrollSelectionForm : ScrollSelectionForm_Access;
      item : ABTextItem_Access;
      stringComponent : ABStringComponent_Access;
      index : Integer;
   begin
        mainGameDemoStatePaintable := MainGameDemoStatePaintable_Access (This.getMainDemoStatePaintable);
        formPaintable := FormPaintable_Access (mainGameDemoStatePaintable.getMenuPaintableInterface);
        scrollSelectionForm := ScrollSelectionForm_Access (formPaintable.getForm);
        mainGameDemoStatePaintable.getOwnershipPaintableInterface.setBasicColorP (basicColor);
        scrollSelectionForm.setButtonBasicColor (basicColor);
        item := null;
        stringComponent := null;
        for index in reverse 0 .. (scrollSelectionForm.size) - (1) loop
            item := ABTextItem_Access (scrollSelectionForm.get (index));
            stringComponent := item.getLabelStringComponent;
            if (stringComponent) /= (null) then
                stringComponent.setForegroundBasicColor (basicColor);
            end if;
        end loop;
   end setColor;

end org.allbinary.game.paint.GameScrollMenuPaintable_Package;


