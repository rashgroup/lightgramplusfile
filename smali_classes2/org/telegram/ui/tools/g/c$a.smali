.class Lorg/telegram/ui/tools/g/c$a;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/g/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/g/c;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/g/c$a;->a:Lorg/telegram/ui/tools/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$a;->a:Lorg/telegram/ui/tools/g/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/g/c;->a(Lorg/telegram/ui/tools/g/c;)Lorg/telegram/ui/tools/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/tools/g/a;->b()V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$a;->a:Lorg/telegram/ui/tools/g/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/g/c;->b(Lorg/telegram/ui/tools/g/c;)V

    return-void
.end method
