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


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;
with org.allbinary.util.ImmutableBasicArrayList_Package; use org.allbinary.util.ImmutableBasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.util.BasicArrayListUtil_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;
   procedure Initialize_Fields (This : in out BasicArrayListUtil'Class) is
   begin
      null;
      This.NULL_ARRAY_OF_ARRAY := new BasicArrayList_Access_Array_Access_Array'(0 .. (0) - 1 => new BasicArrayList_Access_Array'(0 .. (0) - 1 => null));
      This.myRandomFactory := MyRandomFactory_Package.getInstance;
      This.immutableInstance := BasicArrayList_Access (ImmutableBasicArrayList_Package.Create (To_Unbounded_String ("Immutable"), 0));
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

   function getRandom (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Java_Object_Access is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      i_random : Integer;
   begin
        i_random := BasicArrayListUtil'Class (This).getRandomIndex (list);
        return list.objectArray (i_random);
   end getRandom;

   function getRandomIndex (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Integer is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
   begin
        return This.myRandomFactory.getAbsoluteNextInt (list.size);
   end getRandomIndex;

   procedure reverse_Id (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
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

   function log (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Unbounded_String is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
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
        list := BasicArrayList_Access (BasicArrayListD_Package.Create);
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

   procedure getRandom (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Java_Object_Access := BasicArrayListUtil'Class (This).getRandom (list_Param => list_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRandom;

   procedure getRandomIndex (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Integer := BasicArrayListUtil'Class (This).getRandomIndex (list_Param => list_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRandomIndex;

   procedure log (This : in out BasicArrayListUtil; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Unbounded_String := BasicArrayListUtil'Class (This).log (list_Param => list_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end log;

begin
   null;
   instance := BasicArrayListUtil_Package.Create;

end org.allbinary.util.BasicArrayListUtil_Package;


