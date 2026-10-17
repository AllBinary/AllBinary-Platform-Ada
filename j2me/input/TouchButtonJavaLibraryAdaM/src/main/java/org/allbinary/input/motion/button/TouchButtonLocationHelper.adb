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


package body org.allbinary.input.motion.button.TouchButtonLocationHelper_Package is

   procedure Initialize_Fields (This : in out TouchButtonLocationHelper'Class) is
   begin
      null;
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TouchButtonLocationHelper'Class) is
      buttonSize : Integer;
      displayInfo : DisplayInfoSingleton_Access;
   begin
      Initialize_Fields (This);
        buttonSize := CommonButtons_Package.getInstance.STANDARD_BUTTON_SIZE;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        This.totalColumns := Long_Long_Integer (Long_Float'Rounding ((Float (displayInfo.getLastWidth)) / (Float (buttonSize))));
        This.totalRows := Long_Long_Integer (Long_Float'Rounding ((Float (displayInfo.getLastHeight)) / (Float (buttonSize))));
        This.columnsRemainder := (displayInfo.getLastWidth) rem (buttonSize);
        This.columnsRemainderHalf := (Java_Shift_Right_Arithmetic (This.columnsRemainder, 1));
        This.rowsRemainder := (displayInfo.getLastHeight) rem (buttonSize);
        This.rowsRemainderHalf := (Java_Shift_Right_Arithmetic (This.rowsRemainder, 1));
   end Initialize;

   function Create return TouchButtonLocationHelper_Access is
      This : constant TouchButtonLocationHelper_Access := new TouchButtonLocationHelper;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getTotalColumns (This : in out TouchButtonLocationHelper) return Integer is
   begin
        return This.totalColumns;
   end getTotalColumns;

   function getTotalRows (This : in out TouchButtonLocationHelper) return Integer is
   begin
        return This.totalRows;
   end getTotalRows;

   function getColumnsRemainder (This : in out TouchButtonLocationHelper) return Integer is
   begin
        return This.columnsRemainder;
   end getColumnsRemainder;

   function getRowsRemainder (This : in out TouchButtonLocationHelper) return Integer is
   begin
        return This.rowsRemainder;
   end getRowsRemainder;

   function getColumnsRemainderHalf (This : in out TouchButtonLocationHelper) return Integer is
   begin
        return This.columnsRemainderHalf;
   end getColumnsRemainderHalf;

   function getRowsRemainderHalf (This : in out TouchButtonLocationHelper) return Integer is
   begin
        return This.rowsRemainderHalf;
   end getRowsRemainderHalf;

   function toString (This : in out TouchButtonLocationHelper) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("totalColumns: "));
        stringBuffer.appendint (This.totalColumns);
        stringBuffer.append (To_Unbounded_String (" totalRows: "));
        stringBuffer.appendint (This.totalRows);
        stringBuffer.append (To_Unbounded_String (" columnsRemainder: "));
        stringBuffer.appendint (This.columnsRemainder);
        stringBuffer.append (To_Unbounded_String (" rowsRemainder: "));
        stringBuffer.appendint (This.rowsRemainder);
        stringBuffer.append (To_Unbounded_String (" columnsRemainderHalf: "));
        stringBuffer.appendint (This.columnsRemainderHalf);
        stringBuffer.append (To_Unbounded_String (" rowsRemainderHalf: "));
        stringBuffer.appendint (This.rowsRemainderHalf);
        return stringBuffer.toString;
   end toString;

   procedure getTotalColumns (This : in out TouchButtonLocationHelper) is
      Java_Result : constant Integer := TouchButtonLocationHelper'Class (This).getTotalColumns;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalColumns;

   procedure getTotalRows (This : in out TouchButtonLocationHelper) is
      Java_Result : constant Integer := TouchButtonLocationHelper'Class (This).getTotalRows;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalRows;

   procedure getColumnsRemainder (This : in out TouchButtonLocationHelper) is
      Java_Result : constant Integer := TouchButtonLocationHelper'Class (This).getColumnsRemainder;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColumnsRemainder;

   procedure getRowsRemainder (This : in out TouchButtonLocationHelper) is
      Java_Result : constant Integer := TouchButtonLocationHelper'Class (This).getRowsRemainder;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRowsRemainder;

   procedure getColumnsRemainderHalf (This : in out TouchButtonLocationHelper) is
      Java_Result : constant Integer := TouchButtonLocationHelper'Class (This).getColumnsRemainderHalf;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColumnsRemainderHalf;

   procedure getRowsRemainderHalf (This : in out TouchButtonLocationHelper) is
      Java_Result : constant Integer := TouchButtonLocationHelper'Class (This).getRowsRemainderHalf;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRowsRemainderHalf;

   procedure toString (This : in out TouchButtonLocationHelper) is
      Java_Result : constant Unbounded_String := TouchButtonLocationHelper'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;


