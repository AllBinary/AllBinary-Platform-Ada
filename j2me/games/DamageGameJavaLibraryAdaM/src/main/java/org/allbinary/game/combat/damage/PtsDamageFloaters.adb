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


package body org.allbinary.game.combat.damage.PtsDamageFloaters_Package is

   procedure Initialize_Fields (This : in out PtsDamageFloaters'Class) is
   begin
      null;
      This.basicSetColorUtil := BasicColorSetUtil_Package.getInstance;
      
      This.lastDamage := new Integer_Array'(0 .. (5) - 1 => 0);
      This.lastDamageString := new Character_Array_Access_Array'(0 .. (5) - 1 => new Character_Array'(0 .. (0) - 1 => ASCII.NUL));
      This.lastDamageStringSizeArray := new Integer_Array'(0 .. (5) - 1 => 0);
      This.circularIndexUtil := CircularIndexUtil_Package.createInstance (5);
      
      This.myRandomFactory := MyRandomFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PtsDamageFloaters'Class; layerInterface : AllBinaryLayer_Access) is
      CHAR_ARRAY : Character_Array_Access;
      index : Integer;
   begin
      DamageFloaters_Package.Initialize (This);
      Initialize_Fields (This);
        This.primitiveLongUtil := PrimitiveLongUtil_Package.createPowerOfTen (100000);
        This.layerInterface := layerInterface;
        CHAR_ARRAY := CharArrayFactory_Package.getInstance.getZeroCharArray;
        for index in reverse 0 .. (This.lastDamageString'Length) - (1) loop
            This.lastDamageString (index) := CHAR_ARRAY;
        end loop;
   end Initialize;

   function Create (layerInterface : AllBinaryLayer_Access) return PtsDamageFloaters_Access is
      This : constant PtsDamageFloaters_Access := new PtsDamageFloaters;
   begin
      Initialize (This.all, layerInterface);
      return This;
   end Create;

   procedure add (This : in out PtsDamageFloaters; damage : Integer) is
      index : Integer;
   begin
        index := This.circularIndexUtil.getIndex;
        This.lastDamage (index) := damage;
        This.lastDamageString (index) := This.primitiveLongUtil.getCharArray (This.lastDamage (index));
        This.lastDamageStringSizeArray (index) := This.primitiveLongUtil.getCurrentTotalDigits;
        This.circularIndexUtil.next;
   end add;

   procedure paint (This : in out PtsDamageFloaters; graphics : Graphics_Access) is
      viewPosition : ViewPositionBase_Access;
      x : Integer;
      y : Integer;
      delta_Id : Integer;
      index : Integer;
   begin
        viewPosition := This.layerInterface.getViewPosition;
        x := viewPosition.getX;
        y := viewPosition.getY;
        for index in reverse 0 .. (This.lastDamage'Length) - (1) loop
            if (This.lastDamage (index)) /= (0) then
                delta_Id := (10) * (((index) + (2)));
                This.basicSetColorUtil.setBasicColorP (graphics, PtsDamageFloaters_Package.basicColorArrayIndexer.get);
                graphics.drawChars (This.lastDamageString (index), 0, This.lastDamageStringSizeArray (index), (x) - (This.myRandomFactory.getNextInt (delta_Id)), (y) - (delta_Id), 0);
                PtsDamageFloaters_Package.basicColorArrayIndexer.next;
            end if;
            This.lastDamage (index) := 0;
        end loop;
   end paint;

begin
   null;
   basicColorArrayIndexer := BasicColorArrayIndexer_Package.Create (new BasicColor_Access_Array'(BasicColorFactory_Package.getInstance.WHITE, BasicColorFactory_Package.getInstance.RED, BasicColorFactory_Package.getInstance.YELLOW, BasicColorFactory_Package.getInstance.BLUE));

end org.allbinary.game.combat.damage.PtsDamageFloaters_Package;


