.class Lorg/telegram/ui/tools/g/c$d;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/g/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/g/c;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/g/c$d;->a:Lorg/telegram/ui/tools/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v1, p0, Lorg/telegram/ui/tools/g/c$d;->a:Lorg/telegram/ui/tools/g/c;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$d;->a:Lorg/telegram/ui/tools/g/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/g/c;->a(Lorg/telegram/ui/tools/g/c;)Lorg/telegram/ui/tools/g/a;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$d;->a:Lorg/telegram/ui/tools/g/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/g/c;->d(Lorg/telegram/ui/tools/g/c;)Lorg/telegram/ui/tools/g/f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/ui/tools/g/f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/tools/g/a;->a(Landroid/database/Cursor;)Lorg/telegram/ui/tools/g/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/tools/g/g;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/tools/g/c;->a(Lorg/telegram/ui/tools/g/c;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$d;->a:Lorg/telegram/ui/tools/g/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/g/c;->e(Lorg/telegram/ui/tools/g/c;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$d;->a:Lorg/telegram/ui/tools/g/c;

    check-cast p2, Lorg/telegram/ui/tools/g/e;

    invoke-virtual {p2}, Lorg/telegram/ui/tools/g/e;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/tools/g/c;->a:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$d;->a:Lorg/telegram/ui/tools/g/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/g/c;->f(Lorg/telegram/ui/tools/g/c;)V

    :cond_0
    return-void
.end method
