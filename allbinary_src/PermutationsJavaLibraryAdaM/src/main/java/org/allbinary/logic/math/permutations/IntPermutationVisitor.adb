--  Generated Code Do Not Modify


package body org.allbinary.logic.math.permutations.IntPermutationVisitor_Package is

   procedure Initialize_Fields (This : in out IntPermutationVisitor'Class) is
   begin
      null;
      
      This.stringBuilder := StringMaker_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out IntPermutationVisitor'Class; data : Integer_Array_Access) is
   begin
      Visitor_Package.Initialize (This);
      Initialize_Fields (This);
        This.data := data;
   end Initialize;

   function Create (data : Integer_Array_Access) return IntPermutationVisitor_Access is
      This : constant IntPermutationVisitor_Access := new IntPermutationVisitor;
   begin
      IntPermutationVisitor_Package.Initialize (This.all, data);
      return This;
   end Create;

   function visit (This : in out IntPermutationVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        This.stringBuilder.delete (0, This.stringBuilder.length);
        This.print (This.data, This.stringBuilder);
        return NullUtil_Package.getInstance.NULL_OBJECT;
   end visit;

   procedure print (This : in out IntPermutationVisitor; data : Integer_Array_Access) is
      stringBuilder : StringMaker_Access;
   begin
        stringBuilder := StringMaker_Package.Create;
        This.print (data, stringBuilder);
   end print;

   procedure print (This : in out IntPermutationVisitor; data : Integer_Array_Access; stringBuilder_Param : access StringMaker'Class) is
      stringBuilder : StringMaker_Access := StringMaker_Access (stringBuilder_Param);
      commonSeps : CommonSeps_Access;
      size : Integer;
      i : Integer;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        size := data'Length;
        for i in 0 .. (size) - 1 loop
            stringBuilder.appendint (data (i));
            stringBuilder.append (commonSeps.SPACE);
        end loop;
        Ada.Text_IO.Put_Line (Java_Image (stringBuilder.toString));
   end print;

   procedure visit (This : in out IntPermutationVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := IntPermutationVisitor'Class (This).visit (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.logic.math.permutations.IntPermutationVisitor_Package;


