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


package body org.allbinary.game.input.mapping.InputMapping_Package is

   procedure Initialize_Fields (This : in out InputMapping'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
      This.mappedList := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out InputMapping'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputMapping_Access is
      This : constant InputMapping_Access := new InputMapping;
   begin
      Initialize (This.all);
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

   procedure remove (This : in out InputMapping; input : Input_Access; mappedToInput : Input_Access) is
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
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("InputMapping::remove"));
        list := This.getMappedInput (input);
        if list.contains (mappedToInput) then
            list.remove (mappedToInput);
            This.mappedList.remove (mappedToInput);
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (To_Unbounded_String ("Removed: "));
            stringBuffer.append (stringUtil.toString (input));
            stringBuffer.append (To_Unbounded_String (" == "));
            stringBuffer.append (stringUtil.toString (mappedToInput));
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("InputMapping::remove"));
        else
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (To_Unbounded_String ("Not Deleted: "));
            stringBuffer.append (stringUtil.toString (input));
            stringBuffer.append (To_Unbounded_String (" == "));
            stringBuffer.append (stringUtil.toString (mappedToInput));
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("InputMapping::remove"));
        end if;
   end remove;

   --  throws Exception
   procedure addMapping (This : in out InputMapping; inputToGameKeyMapping : InputToGameKeyMapping_Access) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end addMapping;

   procedure add (This : in out InputMapping; input : Input_Access; mappedToInput : Input_Access) is
      list : BasicArrayList_Access;
   begin
        list := This.getMappedInput (input);
        if not (list.contains (mappedToInput)) then
            list.add (mappedToInput);
            This.mappedList.add (mappedToInput);
        end if;
   end add;

   function isMapped (This : in out InputMapping; input : Input_Access) return Boolean is
   begin
        return This.mappedList.contains (input);
   end isMapped;

   function getMappedInput (This : in out InputMapping; id : Input_Access) return BasicArrayList_Access is
      mappingInputCanBeNullList : Java_Object_Access;
      list : BasicArrayList_Access;
   begin
        mappingInputCanBeNullList := This.hashtable.get (id);
        if (mappingInputCanBeNullList) = (null) then
            list := BasicArrayListD_Package.Create;
            This.hashtable.put (id, list);
            return list;
        end if;
        return BasicArrayList_Access (mappingInputCanBeNullList);
   end getMappedInput;

   function getHashtable (This : in out InputMapping) return ABHashtable_Access is
   begin
        return This.hashtable;
   end getHashtable;

   procedure getTotalMapped (This : in out InputMapping) is
      Java_Result : constant Integer := InputMapping'Class (This).getTotalMapped;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalMapped;

   procedure isDefaultNew (This : in out InputMapping) is
      Java_Result : constant Boolean := InputMapping'Class (This).isDefaultNew;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDefaultNew;

   procedure getDefault (This : in out InputMapping) is
      Java_Result : constant InputToGameKeyMapping_Access := InputMapping'Class (This).getDefault;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDefault;

   procedure isMapped (This : in out InputMapping; input : Input_Access) is
      Java_Result : constant Boolean := InputMapping'Class (This).isMapped (input);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMapped;

   procedure getMappedInput (This : in out InputMapping; id : Input_Access) is
      Java_Result : constant BasicArrayList_Access := InputMapping'Class (This).getMappedInput (id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMappedInput;

   procedure getHashtable (This : in out InputMapping) is
      Java_Result : constant ABHashtable_Access := InputMapping'Class (This).getHashtable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHashtable;

end org.allbinary.game.input.mapping.InputMapping_Package;


