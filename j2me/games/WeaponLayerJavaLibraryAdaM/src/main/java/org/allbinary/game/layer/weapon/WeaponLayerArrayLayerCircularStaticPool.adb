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


package body org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package is

   procedure Initialize_Fields (This : in out WeaponLayerArrayLayerCircularStaticPool'Class) is
   begin
      null;
      This.MAX := 5;
      This.circularIndexUtil := CircularIndexUtil_Package.createInstance (This.MAX);
      This.ALL_WEAPONLAYER_ARRAY := new Java_Object_Access_Array_Access_Array_Access_Array'(0 .. (4) - 1 => null);
   end Initialize_Fields;

   procedure Initialize (This : in out WeaponLayerArrayLayerCircularStaticPool'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return WeaponLayerArrayLayerCircularStaticPool_Access is
      This : constant WeaponLayerArrayLayerCircularStaticPool_Access := new WeaponLayerArrayLayerCircularStaticPool;
   begin
      WeaponLayerArrayLayerCircularStaticPool_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return WeaponLayerArrayLayerCircularStaticPool_Access is
   begin
        return WeaponLayerArrayLayerCircularStaticPool_Package.instance;
   end getInstance;

   procedure init (This : in out WeaponLayerArrayLayerCircularStaticPool) is
      WEAPONLAYER_ARRAY : Java_Object_Access_Array_Access_Array_Access;
      TWO_WEAPONLAYER_ARRAY : Java_Object_Access_Array_Access_Array_Access;
      THREE_WEAPONLAYER_ARRAY : Java_Object_Access_Array_Access_Array_Access;
      index : Integer;
   begin
        WEAPONLAYER_ARRAY := new Java_Object_Access_Array_Access_Array'(0 .. ((This.MAX) * (2)) - 1 => null);
        TWO_WEAPONLAYER_ARRAY := new Java_Object_Access_Array_Access_Array'(0 .. (This.MAX) - 1 => null);
        THREE_WEAPONLAYER_ARRAY := new Java_Object_Access_Array_Access_Array'(0 .. (This.MAX) - 1 => null);
        for index in 0 .. (This.MAX) - 1 loop
            WEAPONLAYER_ARRAY (index) := new Java_Object_Access_Array'(0 .. (1) - 1 => null);
            TWO_WEAPONLAYER_ARRAY (index) := new Java_Object_Access_Array'(0 .. (2) - 1 => null);
            THREE_WEAPONLAYER_ARRAY (index) := new Java_Object_Access_Array'(0 .. (3) - 1 => null);
        end loop;
        This.ALL_WEAPONLAYER_ARRAY (1) := WEAPONLAYER_ARRAY;
        This.ALL_WEAPONLAYER_ARRAY (2) := TWO_WEAPONLAYER_ARRAY;
        This.ALL_WEAPONLAYER_ARRAY (3) := THREE_WEAPONLAYER_ARRAY;
   end init;

   --  throws Exception
   function getInstanceArray (This : in out WeaponLayerArrayLayerCircularStaticPool; size : Integer) return WeaponLayer_Access_Array_Access is
      weaponLayerArray : WeaponLayer_Access_Array_Access;
   begin
        weaponLayerArray := WeaponLayer_Access_Array_Access (This.ALL_WEAPONLAYER_ARRAY (size) (This.circularIndexUtil.getIndex));
        This.circularIndexUtil.next;
        return weaponLayerArray;
   end getInstanceArray;

   procedure getInstanceArray (This : in out WeaponLayerArrayLayerCircularStaticPool; size : Integer) is
      Java_Result : constant WeaponLayer_Access_Array_Access := WeaponLayerArrayLayerCircularStaticPool'Class (This).getInstanceArray (size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceArray;

begin
   null;
   instance := WeaponLayerArrayLayerCircularStaticPool_Package.Create;

end org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package;


