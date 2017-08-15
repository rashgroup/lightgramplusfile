.class Lorg/telegram/ui/tools/b$1$1;
.super Ljava/lang/Object;
.source "AlertShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/b$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/tgnet/TLObject;

.field final synthetic b:Lorg/telegram/ui/tools/b$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/b$1;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$1$1;->b:Lorg/telegram/ui/tools/b$1;

    iput-object p2, p0, Lorg/telegram/ui/tools/b$1$1;->a:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/b$1$1;->a:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/b$1$1;->b:Lorg/telegram/ui/tools/b$1;

    iget-object v1, v0, Lorg/telegram/ui/tools/b$1;->b:Lorg/telegram/ui/tools/b;

    iget-object v0, p0, Lorg/telegram/ui/tools/b$1$1;->a:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    invoke-static {v1, v0}, Lorg/telegram/ui/tools/b;->a(Lorg/telegram/ui/tools/b;Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;)Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    iget-object v0, p0, Lorg/telegram/ui/tools/b$1$1;->b:Lorg/telegram/ui/tools/b$1;

    iget-object v0, v0, Lorg/telegram/ui/tools/b$1;->b:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->a(Lorg/telegram/ui/tools/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/b$1$1;->b:Lorg/telegram/ui/tools/b$1;

    iget-object v0, v0, Lorg/telegram/ui/tools/b$1;->b:Lorg/telegram/ui/tools/b;

    iget-object v1, p0, Lorg/telegram/ui/tools/b$1$1;->b:Lorg/telegram/ui/tools/b$1;

    iget-object v1, v1, Lorg/telegram/ui/tools/b$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/b;->a(Lorg/telegram/ui/tools/b;Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/b$1$1;->b:Lorg/telegram/ui/tools/b$1;

    iget-object v0, v0, Lorg/telegram/ui/tools/b$1;->b:Lorg/telegram/ui/tools/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/b;->a(Lorg/telegram/ui/tools/b;Z)Z

    return-void
.end method
