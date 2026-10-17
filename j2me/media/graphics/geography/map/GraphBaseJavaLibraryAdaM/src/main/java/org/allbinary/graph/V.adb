--  Generated Code Do Not Modify


package body org.allbinary.graph.V_Package is

   procedure Initialize_Fields (This : in out V'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out V'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return V_Access is
      This : constant V_Access := new V;
   begin
      V_Package.Initialize (This.all);
      return This;
   end Create;


   function getId (This : in out V) return Integer is
   begin
        return 0;
   end getId;

end org.allbinary.graph.V_Package;


