--  Generated Code Do Not Modify


package body org.allbinary.util.BasicArrayList_Package is

   procedure Initialize_Fields (This : in out BasicArrayList'Class) is
   begin
      null;
      This.arrayUtil := ArrayUtil_Package.getInstance;
      
      This.currentIndex := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicArrayList'Class; objectArray : Java_Object_Access_Array_Access) is
   begin
      Initialize_Fields (This);
        This.objectArray := objectArray;
   end Initialize;

   function Create (objectArray : Java_Object_Access_Array_Access) return BasicArrayList_Access is
      This : constant BasicArrayList_Access := new BasicArrayList;
   begin
      BasicArrayList_Package.Initialize (This.all, objectArray);
      return This;
   end Create;

   procedure addAt (This : in out BasicArrayList; index : Integer; element_Param : access Java_Object'Class) is
      element : Java_Object_Access := Java_Object_Access (element_Param);
      stringBuffer : StringMaker_Access;
   begin
        if ((index) > (This.currentIndex)) or else ((index) < (0)) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (CommonLabels_Package.getInstance.INDEX_LABEL);
            stringBuffer.appendint (index);
            stringBuffer.append (BasicArrayList_Package.SIZE);
            stringBuffer.appendint (This.currentIndex);
            Java_Throw (Java_New_Exception ("IndexOutOfBoundsException", stringBuffer.toString));
        end if;
        This.ensureCapacity ((This.currentIndex) + (1));
        Java_Array_Copy (This.objectArray, index, This.objectArray, (index) + (1), (This.currentIndex) - (index));
        This.objectArray (index) := element;
        This.currentIndex := This.currentIndex + 1;
   end addAt;

   function add (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) return Boolean is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        This.ensureCapacity ((This.currentIndex) + (1));
        This.objectArray (Java_Post_Increment (This.currentIndex)) := anyType;
        return True;
   end add;

   function removeAt (This : in out BasicArrayList; index : Integer) return Java_Object_Access is
      stringBuffer : StringMaker_Access;
      oldValue : Java_Object_Access;
      numMoved : Integer;
   begin
        if (index) >= (This.currentIndex) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (CommonLabels_Package.getInstance.INDEX_LABEL);
            stringBuffer.appendint (index);
            stringBuffer.append (BasicArrayList_Package.SIZE);
            stringBuffer.appendint (This.currentIndex);
            Java_Throw (Java_New_Exception ("IndexOutOfBoundsException", stringBuffer.toString));
        end if;
        oldValue := This.objectArray (index);
        numMoved := ((This.currentIndex) - (index)) - (1);
        if (numMoved) > (0) then
            Java_Array_Copy (This.objectArray, (index) + (1), This.objectArray, index, numMoved);
        end if;
        This.objectArray (Java_Pre_Decrement (This.currentIndex)) := null;
        return oldValue;
   end removeAt;

   function remove (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) return Boolean is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
      numMoved : Integer;
      index : Integer;
   begin
        if (anyType) = (null) then
            for index in 0 .. (This.currentIndex) - 1 loop
                if (This.objectArray (index)) = (null) then
                    numMoved := ((This.currentIndex) - (index)) - (1);
                    if (numMoved) > (0) then
                        Java_Array_Copy (This.objectArray, (index) + (1), This.objectArray, index, numMoved);
                    end if;
                    This.objectArray (Java_Pre_Decrement (This.currentIndex)) := null;
                    return True;
                end if;
            end loop;
        else
            for index in 0 .. (This.currentIndex) - 1 loop
                if ((anyType) = (This.objectArray (index))) or else (anyType.equals (This.objectArray (index))) then
                    numMoved := ((This.currentIndex) - (index)) - (1);
                    if (numMoved) > (0) then
                        Java_Array_Copy (This.objectArray, (index) + (1), This.objectArray, index, numMoved);
                    end if;
                    This.objectArray (Java_Pre_Decrement (This.currentIndex)) := null;
                    return True;
                end if;
            end loop;
        end if;
        return False;
   end remove;

   function removeAll2 (This : in out BasicArrayList; list_Param : access BasicArrayList'Class) return Boolean is
      list : BasicArrayList_Access := BasicArrayList_Access (list_Param);
      result : Boolean;
      size_Case : Integer;
      index : Integer;
   begin
        result := True;
        size_Case := list.size_Case;
        for index in 0 .. (size_Case) - 1 loop
            if This.remove (list.get (index)) then
                null;
            else
                result := False;
            end if;
        end loop;
        return result;
   end removeAll2;

   function addAll2 (This : in out BasicArrayList; list_Param : access BasicArrayList'Class) return Boolean is
      list : BasicArrayList_Access := BasicArrayList_Access (list_Param);
      listSize : Integer;
      index : Integer;
   begin
        This.ensureCapacity ((This.currentIndex) + (list.currentIndex));
        listSize := list.currentIndex;
        for index in 0 .. (listSize) - 1 loop
            This.objectArray (Java_Post_Increment (This.currentIndex)) := list.objectArray (index);
        end loop;
        return True;
   end addAll2;

   function addAllList (This : in out BasicArrayList; list_Param : access BasicArrayList'Class) return Boolean is
      list : BasicArrayList_Access := BasicArrayList_Access (list_Param);
      newObjectArray : Java_Object_Access_Array_Access;
   begin
        newObjectArray := list.toArray;
        return This.addAll (newObjectArray);
   end addAllList;

   function addAll (This : in out BasicArrayList; newObjectArray : Java_Object_Access_Array_Access) return Boolean is
      numSize : Integer;
   begin
        numSize := newObjectArray'Length;
        This.ensureCapacity ((This.currentIndex) + (numSize));
        Java_Array_Copy (newObjectArray, 0, This.objectArray, This.currentIndex, numSize);
        This.currentIndex := (This.currentIndex) + (numSize);
        return (numSize) /= (0);
   end addAll;

   procedure ensureCapacity (This : in out BasicArrayList; minSize : Integer) is
      oldCapacity : Integer;
      newCapacity : Integer;
   begin
        oldCapacity := This.objectArray'Length;
        if (minSize) > (oldCapacity) then
            newCapacity := ((Java_Shift_Right_Arithmetic (((oldCapacity) * (3)), 1))) + (1);
            if (newCapacity) < (minSize) then
                newCapacity := minSize;
            end if;
            This.objectArray := This.arrayUtil.copyOf (This.objectArray, newCapacity);
        end if;
   end ensureCapacity;

   procedure trimToSize (This : in out BasicArrayList) is
      oldCapacity : Integer;
   begin
        oldCapacity := This.objectArray'Length;
        if (This.currentIndex) < (oldCapacity) then
            This.objectArray := This.arrayUtil.copyOf (This.objectArray, This.currentIndex);
        end if;
   end trimToSize;

   function indexOf (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) return Integer is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
      i : Integer;
   begin
        if (anyType) = (null) then
            for i in 0 .. (This.currentIndex) - 1 loop
                if (This.objectArray (i)) = (null) then
                    return i;
                end if;
            end loop;
        else
            for i in 0 .. (This.currentIndex) - 1 loop
                if anyType.equals (This.objectArray (i)) then
                    return i;
                end if;
            end loop;
        end if;
        return -(1);
   end indexOf;

   function lastIndexOf (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) return Integer is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
      i : Integer;
   begin
        if (anyType) = (null) then
            for i in reverse 0 .. (This.currentIndex) - (1) loop
                if (This.objectArray (i)) = (null) then
                    return i;
                end if;
            end loop;
        else
            for i in reverse 0 .. (This.currentIndex) - (1) loop
                if anyType.equals (This.objectArray (i)) then
                    return i;
                end if;
            end loop;
        end if;
        return -(1);
   end lastIndexOf;

   function get (This : in out BasicArrayList; index : Integer) return Java_Object_Access is
      stringBuffer : StringMaker_Access;
   begin
        if (index) >= (This.currentIndex) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (CommonLabels_Package.getInstance.INDEX_LABEL);
            stringBuffer.appendint (index);
            stringBuffer.append (BasicArrayList_Package.SIZE);
            stringBuffer.appendint (This.currentIndex);
            Java_Throw (Java_New_Exception ("IndexOutOfBoundsException", stringBuffer.toString));
        end if;
        return This.objectArray (index);
   end get;

   function set (This : in out BasicArrayList; index : Integer; element_Param : access Java_Object'Class) return Java_Object_Access is
      element : Java_Object_Access := Java_Object_Access (element_Param);
      stringBuffer : StringMaker_Access;
      oldValue : Java_Object_Access;
   begin
        if (index) >= (This.currentIndex) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (CommonLabels_Package.getInstance.INDEX_LABEL);
            stringBuffer.appendint (index);
            stringBuffer.append (BasicArrayList_Package.SIZE);
            stringBuffer.appendint (This.currentIndex);
            Java_Throw (Java_New_Exception ("IndexOutOfBoundsException", stringBuffer.toString));
        end if;
        oldValue := This.objectArray (index);
        This.objectArray (index) := element;
        return oldValue;
   end set;

   procedure clear (This : in out BasicArrayList) is
      i : Integer;
   begin
        for i in 0 .. (This.currentIndex) - 1 loop
            This.objectArray (i) := null;
        end loop;
        This.currentIndex := 0;
   end clear;

   function size_Case (This : in out BasicArrayList) return Integer is
   begin
        return This.currentIndex;
   end size_Case;

   function isEmpty (This : in out BasicArrayList) return Boolean is
   begin
        return (This.currentIndex) = (0);
   end isEmpty;

   function contains (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) return Boolean is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        return (This.indexOf (anyType)) >= (0);
   end contains;

   function toArray (This : in out BasicArrayList) return Java_Object_Access_Array_Access is
   begin
        return This.arrayUtil.copyOf (This.objectArray, This.currentIndex);
   end toArray;

   function toArrayType (This : in out BasicArrayList; objectArray : Java_Object_Access_Array_Access) return Java_Object_Access_Array_Access is
   begin
        if (objectArray'Length) < (This.currentIndex) then
            return This.arrayUtil.copyOfType (This.objectArray, This.currentIndex, objectArray.all'Tag);
        end if;
        Java_Array_Copy (This.objectArray, 0, objectArray, 0, This.currentIndex);
        if (objectArray'Length) > (This.currentIndex) then
            objectArray (This.currentIndex) := null;
        end if;
        return objectArray;
   end toArrayType;

   function clone (This : in out BasicArrayList) return Java_Object_Access is
      size_Case : Integer;
      list : BasicArrayList_Access;
      anyType : Java_Object_Access;
      index : Integer;
   begin
        size_Case := This.size_Case;
        list := BasicArrayListS_Package.Create (size_Case);
        anyType := null;
        for index in 0 .. (size_Case) - 1 loop
            anyType := This.objectArray (index);
            list.add (anyType);
        end loop;
        return list;
   end clone;

   function toString (This : in out BasicArrayList) return Unbounded_String is
      COMMA_SEP : Unbounded_String;
      stringBuffer : StringMaker_Access;
      index : Integer;
   begin
        COMMA_SEP := CommonSeps_Package.getInstance.COMMA_SEP;
        stringBuffer := StringMaker_Package.Create;
        for index in 0 .. (This.currentIndex) - 1 loop
            stringBuffer.append (This.objectArray (index).toString);
            stringBuffer.append (COMMA_SEP);
        end loop;
        return stringBuffer.toString;
   end toString;

   procedure add (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := BasicArrayList'Class (This).add (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end add;

   procedure removeAt (This : in out BasicArrayList; index : Integer) is
      Java_Result : constant Java_Object_Access := BasicArrayList'Class (This).removeAt (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeAt;

   procedure remove (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := BasicArrayList'Class (This).remove (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

   procedure removeAll2 (This : in out BasicArrayList; list_Param : access BasicArrayList'Class) is
      Java_Result : constant Boolean := BasicArrayList'Class (This).removeAll2 (list_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeAll2;

   procedure addAll2 (This : in out BasicArrayList; list_Param : access BasicArrayList'Class) is
      Java_Result : constant Boolean := BasicArrayList'Class (This).addAll2 (list_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addAll2;

   procedure addAllList (This : in out BasicArrayList; list_Param : access BasicArrayList'Class) is
      Java_Result : constant Boolean := BasicArrayList'Class (This).addAllList (list_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addAllList;

   procedure addAll (This : in out BasicArrayList; newObjectArray : Java_Object_Access_Array_Access) is
      Java_Result : constant Boolean := BasicArrayList'Class (This).addAll (newObjectArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addAll;

   procedure indexOf (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Integer := BasicArrayList'Class (This).indexOf (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end indexOf;

   procedure lastIndexOf (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Integer := BasicArrayList'Class (This).lastIndexOf (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end lastIndexOf;

   procedure get (This : in out BasicArrayList; index : Integer) is
      Java_Result : constant Java_Object_Access := BasicArrayList'Class (This).get (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure set (This : in out BasicArrayList; index : Integer; element_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := BasicArrayList'Class (This).set (index, element_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end set;

   procedure contains (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := BasicArrayList'Class (This).contains (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end contains;

   procedure toArrayType (This : in out BasicArrayList; objectArray : Java_Object_Access_Array_Access) is
      Java_Result : constant Java_Object_Access_Array_Access := BasicArrayList'Class (This).toArrayType (objectArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toArrayType;

begin
   null;
   SIZE := To_Unbounded_String (", Size: ");

end org.allbinary.util.BasicArrayList_Package;


