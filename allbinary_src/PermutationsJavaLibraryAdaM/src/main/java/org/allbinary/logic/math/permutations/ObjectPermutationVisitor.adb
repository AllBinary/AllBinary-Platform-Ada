--  Generated Code Do Not Modify


package body org.allbinary.logic.math.permutations.ObjectPermutationVisitor_Package is

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
      Initialize (This.all, data);
      return This;
   end Create;

   function visit (This : in out ObjectPermutationVisitor; anyType : Java_Object_Access) return Java_Object_Access is
   begin
        This.stringBuilder.delete (0, This.stringBuilder.length);
        This.print (This.data, This.stringBuilder);
        return NullUtil_Package.getInstance.NULL_OBJECT;
   end visit;

   procedure print (This : in out ObjectPermutationVisitor; data : Java_Object_Access_Array_Access) is
      stringBuilder : StringMaker_Access;
   begin
        stringBuilder := StringMaker_Package.Create;
        This.print (data, stringBuilder);
   end print;

   procedure print (This : in out ObjectPermutationVisitor; data : Java_Object_Access_Array_Access; stringBuilder : StringMaker_Access) is
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

   procedure visit (This : in out ObjectPermutationVisitor; anyType : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := ObjectPermutationVisitor'Class (This).visit (anyType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.logic.math.permutations.ObjectPermutationVisitor_Package;


