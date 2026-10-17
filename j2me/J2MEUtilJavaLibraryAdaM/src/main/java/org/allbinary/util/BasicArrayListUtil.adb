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


package body org.allbinary.util.BasicArrayListUtil_Package is

   procedure Initialize_Fields (This : in out BasicArrayListUtil'Class) is
   begin
      null;
      This.NULL_ARRAY_OF_ARRAY := new BasicArrayList_Access_Array_Access_Array'(0 .. (0) - 1 => new BasicArrayList_Access_Array'(0 .. (0) - 1 => null));
      This.myRandomFactory := MyRandomFactory_Package.getInstance;
      This.immutableInstance := ImmutableBasicArrayList_Package.Create (To_Unbounded_String ("Immutable"), 0);
   end Initialize_Fields;

   procedure Initialize (This : in out BasicArrayListUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicArrayListUtil_Access is
      This : constant BasicArrayListUtil_Access := new BasicArrayListUtil;
   begin
      BasicArrayListUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicArrayListUtil_Access is
   begin
        return BasicArrayListUtil_Package.instance;
   end getInstance;

   function getRandom (This : in out BasicArrayListUtil; list : BasicArrayList_Access) return Java_Object_Access is
      i_random : Integer;
   begin
        i_random := This.getRandomIndex (list);
        return list.objectArray (i_random);
   end getRandom;

   function getRandomIndex (This : in out BasicArrayListUtil; list : BasicArrayList_Access) return Integer is
   begin
        return This.myRandomFactory.getAbsoluteNextInt (list.size);
   end getRandomIndex;

   procedure reverse_Id (This : in out BasicArrayListUtil; list : BasicArrayList_Access) is
      lastMinusOneIndex : Integer;
      temp : Java_Object_Access;
      size : Integer;
      secondSwapIndex : Integer;
      index : Integer;
   begin
        lastMinusOneIndex := (list.size) - (2);
        temp := null;
        size := (lastMinusOneIndex) / (2);
        secondSwapIndex := 0;
        for index in 0 .. size loop
            secondSwapIndex := (lastMinusOneIndex) - (index);
            temp := list.removeAt (index);
            list.addAt (index, list.removeAt (secondSwapIndex));
            list.addAt ((secondSwapIndex) + (1), temp);
        end loop;
   end reverse_Id;

   function log (This : in out BasicArrayListUtil; list : BasicArrayList_Access) return Unbounded_String is
      S_LABEL : Unbounded_String;
      size : Integer;
      stringBuffer : StringMaker_Access;
      usedList : BasicArrayList_Access;
      index : Integer;
   begin
        S_LABEL := To_Unbounded_String (" s: ");
        size := list.size;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (CommonLabels_Package.getInstance.TOTAL_LABEL);
        stringBuffer.appendint (size);
        for index in reverse 0 .. (size) - (1) loop
            usedList := BasicArrayList_Access (list.objectArray (index));
            stringBuffer.append (S_LABEL);
            stringBuffer.appendint (usedList.size);
        end loop;
        return stringBuffer.toString;
   end log;

   function getImmutableInstance (This : in out BasicArrayListUtil) return BasicArrayList_Access is
   begin
        return This.immutableInstance;
   end getImmutableInstance;

   procedure main (args : Unbounded_String_Array_Access) is
      commonPhoneStrings : CommonPhoneStrings_Access;
      list : BasicArrayList_Access;
   begin
        commonPhoneStrings := CommonPhoneStrings_Package.getInstance;
        list := BasicArrayListD_Package.Create;
        list.add (commonPhoneStrings.ONE);
        list.add (commonPhoneStrings.TWO);
        list.add (commonPhoneStrings.THREE);
        list.add (commonPhoneStrings.FOUR);
        list.add (commonPhoneStrings.FIVE);
        list.add (commonPhoneStrings.SIX);
        list.add (commonPhoneStrings.SEVEN);
        list.add (commonPhoneStrings.EIGHT);
        list.add (commonPhoneStrings.NINE);
        BasicArrayListUtil_Package.getInstance.reverse_Id (list);
        Ada.Text_IO.Put_Line (Java_Image (list.toString));
   end main;

   procedure getRandom (This : in out BasicArrayListUtil; list : BasicArrayList_Access) is
      Java_Result : constant Java_Object_Access := BasicArrayListUtil'Class (This).getRandom (list);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRandom;

   procedure getRandomIndex (This : in out BasicArrayListUtil; list : BasicArrayList_Access) is
      Java_Result : constant Integer := BasicArrayListUtil'Class (This).getRandomIndex (list);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRandomIndex;

   procedure log (This : in out BasicArrayListUtil; list : BasicArrayList_Access) is
      Java_Result : constant Unbounded_String := BasicArrayListUtil'Class (This).log (list);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end log;

begin
   null;
   instance := BasicArrayListUtil_Package.Create;

end org.allbinary.util.BasicArrayListUtil_Package;


