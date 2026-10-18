--  Generated Code Do Not Modify


with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.logic.math.permutations.ObjectPermutationVisitor_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
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
            stringBuilder.appendint (Integer (tsUtil.hashCode (data (i))));
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


