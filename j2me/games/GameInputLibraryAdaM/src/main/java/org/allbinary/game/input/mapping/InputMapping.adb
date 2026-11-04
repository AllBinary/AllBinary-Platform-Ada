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


with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;

package body org.allbinary.game.input.mapping.InputMapping_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype InputToGameKeyMapping_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   procedure Initialize_Fields (This : in out InputMapping'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
      This.mappedList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   procedure Initialize (This : in out InputMapping'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputMapping_Access is
      This : constant InputMapping_Access := new InputMapping;
   begin
      InputMapping_Package.Initialize (This.all);
      return This;
   end Create;

   function getTotalMapped (This : in out InputMapping) return Integer is
   begin
        return This.hashtable.size;
   end getTotalMapped;

   function isDefaultNew (This : in out InputMapping) return Boolean is
   begin
        return False;
   end isDefaultNew;

   function getDefault (This : in out InputMapping) return InputToGameKeyMapping_Access is
   begin
        return InputToGameKeyMapping_Package.getNullInstance;
   end getDefault;

   procedure removeAll (This : in out InputMapping) is
   begin
        This.hashtable.clear;
        This.mappedList.clear;
   end removeAll;

   procedure remove (This : in out InputMapping; input_Param : access Input_Package.Input'Class; mappedToInput_Param : access Input_Package.Input'Class) is
      input : constant Input_Access := Input_Access (input_Param);
      mappedToInput : constant Input_Access := Input_Access (mappedToInput_Param);
      stringBuffer : StringMaker_Access;
      stringUtil : StringUtil_Access;
      list : BasicArrayList_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringUtil := StringUtil_Package.getInstance;
        stringBuffer.append (CommonLabels_Package.getInstance.START_LABEL);
        stringBuffer.append (stringUtil.toString (input));
        stringBuffer.append (To_Unbounded_String (" == "));
        stringBuffer.append (stringUtil.toString (mappedToInput));
        This.logUtil.putF (stringBuffer.toString, InputMapping_Access'(This'Unchecked_Access), To_Unbounded_String ("InputMapping::remove"));
        list := InputMapping'Class (This).getMappedInput (input);
        if list.contains (Java_Object_Access (mappedToInput)) then
            list.remove (Java_Object_Access (mappedToInput));
            This.mappedList.remove (Java_Object_Access (mappedToInput));
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (To_Unbounded_String ("Removed: "));
            stringBuffer.append (stringUtil.toString (input));
            stringBuffer.append (To_Unbounded_String (" == "));
            stringBuffer.append (stringUtil.toString (mappedToInput));
            This.logUtil.putF (stringBuffer.toString, InputMapping_Access'(This'Unchecked_Access), To_Unbounded_String ("InputMapping::remove"));
        else
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (To_Unbounded_String ("Not Deleted: "));
            stringBuffer.append (stringUtil.toString (input));
            stringBuffer.append (To_Unbounded_String (" == "));
            stringBuffer.append (stringUtil.toString (mappedToInput));
            This.logUtil.putF (stringBuffer.toString, InputMapping_Access'(This'Unchecked_Access), To_Unbounded_String ("InputMapping::remove"));
        end if;
   end remove;

   --  throws Exception
   procedure addMapping (This : in out InputMapping; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class) is
      inputToGameKeyMapping : constant InputToGameKeyMapping_Access := InputToGameKeyMapping_Access (inputToGameKeyMapping_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end addMapping;

   procedure add (This : in out InputMapping; input_Param : access Input_Package.Input'Class; mappedToInput_Param : access Input_Package.Input'Class) is
      input : constant Input_Access := Input_Access (input_Param);
      mappedToInput : constant Input_Access := Input_Access (mappedToInput_Param);
      list : BasicArrayList_Access;
   begin
        list := InputMapping'Class (This).getMappedInput (input);
        if not (list.contains (Java_Object_Access (mappedToInput))) then
            list.add (Java_Object_Access (mappedToInput));
            This.mappedList.add (Java_Object_Access (mappedToInput));
        end if;
   end add;

   function isMapped (This : in out InputMapping; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return This.mappedList.contains (Java_Object_Access (input));
   end isMapped;

   function getMappedInput (This : in out InputMapping; id_Param : access Input_Package.Input'Class) return BasicArrayList_Access is
      id : constant Input_Access := Input_Access (id_Param);
      mappingInputCanBeNullList : Java_Object_Access;
      list : BasicArrayList_Access;
   begin
        mappingInputCanBeNullList := This.hashtable.get (id);
        if (mappingInputCanBeNullList) = (null) then
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            This.hashtable.put (id, list);
            return list;
        end if;
        return BasicArrayList_Access (mappingInputCanBeNullList);
   end getMappedInput;

   function getHashtable (This : in out InputMapping) return ABHashtable_Access is
   begin
        return This.hashtable;
   end getHashtable;

   procedure isMapped (This : in out InputMapping; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := InputMapping'Class (This).isMapped (input_Param => input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMapped;

   procedure getMappedInput (This : in out InputMapping; id_Param : access Input_Package.Input'Class) is
      Java_Result : constant BasicArrayList_Access := InputMapping'Class (This).getMappedInput (id_Param => id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMappedInput;

end org.allbinary.game.input.mapping.InputMapping_Package;


