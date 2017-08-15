.class Lorg/telegram/ui/tools/d$1;
.super Ljava/lang/Object;
.source "ChatAc.java"

# interfaces
.implements Lorg/telegram/ui/tools/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/d;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d$1;->a:Lorg/telegram/ui/tools/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/tools/d$1;->a:Lorg/telegram/ui/tools/d;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "Sent"

    const v2, 0x7f08079b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/telegram/ui/tools/d$1;->a:Lorg/telegram/ui/tools/d;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d;->finishFragment()V

    return-void
.end method
