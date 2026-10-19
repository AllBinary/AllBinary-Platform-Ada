--  Generated Code Do Not Modify



package body BooleanTest_Package is

   procedure Initialize_Fields (This : in out BooleanTest'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BooleanTest'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BooleanTest_Access is
      This : constant BooleanTest_Access := new BooleanTest;
   begin
      BooleanTest_Package.Initialize (This.all);
      return This;
   end Create;


end BooleanTest_Package;


