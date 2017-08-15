.class Lorg/telegram/ui/DialogsActivityF$3;
.super Ljava/lang/Object;
.source "DialogsActivityF.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivityF;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivityF;

.field final synthetic val$ghostmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivityF;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivityF$3;->this$0:Lorg/telegram/ui/DialogsActivityF;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivityF$3;->val$ghostmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$3;->val$ghostmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v1, 0x7f02012d

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/ui/tools/a/b;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$3;->val$ghostmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v1, 0x7f02012c

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/ui/tools/a/b;->a(Z)V

    goto :goto_0
.end method
