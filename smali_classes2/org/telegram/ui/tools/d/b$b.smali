.class Lorg/telegram/ui/tools/d/b$b;
.super Ljava/lang/Object;
.source "DownloadManeger.java"

# interfaces
.implements Lorg/telegram/ui/tools/d/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/d/b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d/b;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d/b$b;->a:Lorg/telegram/ui/tools/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;ZI)V
    .locals 3

    const-string/jumbo v0, "jjj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "you check"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$b;->a:Lorg/telegram/ui/tools/d/b;

    iget-object v1, v0, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$b;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    iget-object v2, v0, Lorg/telegram/ui/tools/d/a/a;->i:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/tools/d/a/b;->a(Ljava/lang/String;I)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$b;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/tools/d/a/a;->a(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$b;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->b(Lorg/telegram/ui/tools/d/b;)Lorg/telegram/ui/tools/d/c;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/tools/d/a/a;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
