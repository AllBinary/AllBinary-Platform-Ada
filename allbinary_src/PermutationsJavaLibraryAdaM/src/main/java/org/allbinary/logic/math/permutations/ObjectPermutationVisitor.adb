--  Generated Code Do Not Modify


with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with org.microemu.DisplayAccess_Package;
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
with org.microemu.MIDletAccess_Package;
with org.microemu.device.MutableImage_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.logic.math.permutations.ObjectPermutationVisitor_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   function "=" (Left, Right : StringMaker_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   function "=" (Left, Right : StringMaker_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   function "=" (Left, Right : StringMaker_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   function "=" (Left, Right : StringMaker_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringMaker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   procedure Initialize_Fields (This : in out ObjectPermutationVisitor'Class) is
   begin
      null;
      
      This.stringBuilder := StringMaker_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out ObjectPermutationVisitor'Class; data : Java_Object_Access_Array_Access) is
   begin
      Visitor_Package.Initialize (This);
      Initialize_Fields (This);
        This.data := data;
   end Initialize;

   function Create (data : Java_Object_Access_Array_Access) return ObjectPermutationVisitor_Access is
      This : constant ObjectPermutationVisitor_Access := new ObjectPermutationVisitor;
   begin
      ObjectPermutationVisitor_Package.Initialize (This.all, data);
      return This;
   end Create;

   function visit (This : in out ObjectPermutationVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        This.stringBuilder.delete (0, This.stringBuilder.length);
        ObjectPermutationVisitor'Class (This).print (This.data, This.stringBuilder);
        return NullUtil_Package.getInstance.NULL_OBJECT;
   end visit;

   procedure print (This : in out ObjectPermutationVisitor; data : Java_Object_Access_Array_Access) is
      stringBuilder : StringMaker_Access;
   begin
        stringBuilder := StringMaker_Package.Create;
        ObjectPermutationVisitor'Class (This).print (data, stringBuilder);
   end print;

   procedure print (This : in out ObjectPermutationVisitor; data : Java_Object_Access_Array_Access; stringBuilder_Param : access StringMaker_Package.StringMaker'Class) is
      stringBuilder : constant StringMaker_Access := StringMaker_Access (stringBuilder_Param);
      tsUtil : TsUtil_Access;
      size : Integer;
      i : Integer;
   begin
        tsUtil := TsUtil_Package.getInstance;
        size := data'Length;
        for i in 0 .. (size) - 1 loop
            stringBuilder.appendint (tsUtil.hashCode (data (i)));
            stringBuilder.append (CommonSeps_Package.getInstance.SPACE);
        end loop;
        Ada.Text_IO.Put_Line (Java_Image (stringBuilder.toString));
   end print;

   procedure visit (This : in out ObjectPermutationVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := ObjectPermutationVisitor'Class (This).visit (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out ObjectPermutationVisitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return ObjectPermutationVisitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out ObjectPermutationVisitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := ObjectPermutationVisitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.logic.math.permutations.ObjectPermutationVisitor_Package;


