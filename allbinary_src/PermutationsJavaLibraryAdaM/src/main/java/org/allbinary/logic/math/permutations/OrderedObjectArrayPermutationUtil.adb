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


with java.util.Arrays_Package; use java.util.Arrays_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.logic.util.visitor.Visitor_Package_References;
with org.allbinary.logic.math.permutations.ComparableObject_Package; use org.allbinary.logic.math.permutations.ComparableObject_Package;
with org.allbinary.logic.math.permutations.ObjectPermutationVisitor_Package; use org.allbinary.logic.math.permutations.ObjectPermutationVisitor_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.logic.math.permutations.ComparableObject_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.math.permutations.ObjectPermutationVisitor_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.logic.math.permutations.OrderedObjectArrayPermutationUtil_Package is

   package Arrays_Package renames Standard.java.util.Arrays_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   subtype Visitor_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access;
   function "=" (Left, Right : Visitor_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array;
   function "=" (Left, Right : Visitor_Access_Array) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access;
   function "=" (Left, Right : Visitor_Access_Array_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array;
   function "=" (Left, Right : Visitor_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Visitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   procedure Initialize_Fields (This : in out OrderedObjectArrayPermutationUtil'Class) is
   begin
      null;
      This.TOTAL_ITERATIONS_TABLE := To_Unbounded_String ("Total Iterations: ");
      This.FINISHED := To_Unbounded_String ("" & ASCII.LF & "FINISHED");
   end Initialize_Fields;


   function getInstance return OrderedObjectArrayPermutationUtil_Access is
   begin
        return OrderedObjectArrayPermutationUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OrderedObjectArrayPermutationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OrderedObjectArrayPermutationUtil_Access is
      This : constant OrderedObjectArrayPermutationUtil_Access := new OrderedObjectArrayPermutationUtil;
   begin
      OrderedObjectArrayPermutationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure getNext (This : in out OrderedObjectArrayPermutationUtil; data : Java_Object_Access_Array_Access) is
      length : Integer;
      i : Integer;
      tsUtil : TsUtil_Access;
      j : Integer;
   begin
        length := data'Length;
        i := (length) - (1);
        tsUtil := TsUtil_Package.getInstance;
        while (tsUtil.hashCode (data ((i) - (1)))) >= (tsUtil.hashCode (data (i))) loop
            i := (i) - (1);
        end loop;
        j := length;
        while (tsUtil.hashCode (data ((j) - (1)))) <= (tsUtil.hashCode (data ((i) - (1)))) loop
            j := (j) - (1);
        end loop;
        OrderedObjectArrayPermutationUtil'Class (This).swap (data, (i) - (1), (j) - (1));
        i := i + 1;
        j := length;
        while (i) < (j) loop
            OrderedObjectArrayPermutationUtil'Class (This).swap (data, (i) - (1), (j) - (1));
            i := i + 1;
            j := j - 1;
        end loop;
   end getNext;

   procedure swap (This : in out OrderedObjectArrayPermutationUtil; data : Java_Object_Access_Array_Access; a : Integer; b : Integer) is
      temp : Java_Object_Access;
   begin
        temp := data (a);
        data (a) := Java_Object_Access (data (b));
        data (b) := Java_Object_Access (temp);
   end swap;

   function factorial (This : in out OrderedObjectArrayPermutationUtil; dataLength : Integer) return Long_Long_Integer is
      temp : Long_Long_Integer;
      i : Integer;
   begin
        temp := 1;
        if (dataLength) > (1) then
            for i in 1 .. dataLength loop
                temp := (temp) * (Long_Long_Integer (i));
            end loop;
        end if;
        return temp;
   end factorial;

   procedure generate (This : in out OrderedObjectArrayPermutationUtil; data : Java_Object_Access_Array_Access; visitor_Param : access Visitor_Package.Visitor'Class) is
      visitor : constant Visitor_Access := Visitor_Access (visitor_Param);
      iterations : Long_Long_Integer;
      count : Long_Long_Integer;
   begin
        iterations := OrderedObjectArrayPermutationUtil'Class (This).factorial (data'Length);
        Ada.Text_IO.Put (Java_Image (This.TOTAL_ITERATIONS_TABLE));
        Ada.Text_IO.Put_Line (Java_Image (iterations));
        for count in 0 .. ((iterations) - (1)) - 1 loop
            OrderedObjectArrayPermutationUtil'Class (This).getNext (data);
            visitor.visit (OrderedObjectArrayPermutationUtil_Access'(This'Unchecked_Access));
        end loop;
        Ada.Text_IO.Put_Line (Java_Image (This.FINISHED));
   end generate;

   procedure main (args : Unbounded_String_Array_Access) is
      TOTAL : Integer;
      data : Java_Object_Access_Array_Access;
      i : Integer;
      permutationVisitor : ObjectPermutationVisitor_Access;
      ORIGINAL_DATA_LABEL : Unbounded_String;
   begin
        TOTAL := 7;
        data := new Java_Object_Access_Array'(0 .. (TOTAL) - 1 => null);
        for i in 0 .. (TOTAL) - 1 loop
            data (i) := Java_Object_Access (ComparableObject_Package.Create);
        end loop;
        Arrays_Package.sort (data);
        permutationVisitor := ObjectPermutationVisitor_Package.Create (data);
        ORIGINAL_DATA_LABEL := To_Unbounded_String ("Original Data: ");
        Ada.Text_IO.Put (Java_Image (ORIGINAL_DATA_LABEL));
        permutationVisitor.visit (Java_Box (data));
        OrderedObjectArrayPermutationUtil_Package.getInstance.generate (data, permutationVisitor);
   end main;

   procedure factorial (This : in out OrderedObjectArrayPermutationUtil; dataLength : Integer) is
      Java_Result : constant Long_Long_Integer := OrderedObjectArrayPermutationUtil'Class (This).factorial (dataLength => dataLength);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end factorial;

begin
   null;
   instance := OrderedObjectArrayPermutationUtil_Package.Create;

end org.allbinary.logic.math.permutations.OrderedObjectArrayPermutationUtil_Package;


