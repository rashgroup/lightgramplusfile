.class Lorg/telegram/ui/tools/f/c$e$a$a;
.super Ljava/lang/Object;
.source "SpecialContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/f/c$e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/f/c$e$a;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/f/c$e$a;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/f/c$e$a$a;->a:Lorg/telegram/ui/tools/f/c$e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c$e$a$a;->a:Lorg/telegram/ui/tools/f/c$e$a;

    iget-object v0, v0, Lorg/telegram/ui/tools/f/c$e$a;->b:Lorg/telegram/ui/tools/f/c$e;

    iget-object v0, v0, Lorg/telegram/ui/tools/f/c$e;->b:Lorg/telegram/ui/tools/f/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/c;->b(Lorg/telegram/ui/tools/f/c;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/f/a;

    iget-object v1, p0, Lorg/telegram/ui/tools/f/c$e$a$a;->a:Lorg/telegram/ui/tools/f/c$e$a;

    iget v1, v1, Lorg/telegram/ui/tools/f/c$e$a;->a:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/f/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget-object v1, p0, Lorg/telegram/ui/tools/f/c$e$a$a;->a:Lorg/telegram/ui/tools/f/c$e$a;

    iget-object v1, v1, Lorg/telegram/ui/tools/f/c$e$a;->b:Lorg/telegram/ui/tools/f/c$e;

    iget-object v1, v1, Lorg/telegram/ui/tools/f/c$e;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "specific_c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/tools/f/c$e$a$a;->a:Lorg/telegram/ui/tools/f/c$e$a;

    iget-object v1, v1, Lorg/telegram/ui/tools/f/c$e$a;->b:Lorg/telegram/ui/tools/f/c$e;

    iget-object v1, v1, Lorg/telegram/ui/tools/f/c$e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "specific_c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c$e$a$a;->a:Lorg/telegram/ui/tools/f/c$e$a;

    iget-object v0, v0, Lorg/telegram/ui/tools/f/c$e$a;->b:Lorg/telegram/ui/tools/f/c$e;

    iget-object v0, v0, Lorg/telegram/ui/tools/f/c$e;->b:Lorg/telegram/ui/tools/f/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/c;->c(Lorg/telegram/ui/tools/f/c;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c$e$a$a;->a:Lorg/telegram/ui/tools/f/c$e$a;

    iget-object v0, v0, Lorg/telegram/ui/tools/f/c$e$a;->b:Lorg/telegram/ui/tools/f/c$e;

    iget-object v0, v0, Lorg/telegram/ui/tools/f/c$e;->b:Lorg/telegram/ui/tools/f/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/c;->c(Lorg/telegram/ui/tools/f/c;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
