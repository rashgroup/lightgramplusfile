.class Lorg/telegram/ui/ThemeActivity$2$3;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemeActivity$2;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeActivity$2;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$2$3;->this$1:Lorg/telegram/ui/ThemeActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/ThemeActivity$2$3;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/ThemeActivity$2$3$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemeActivity$2$3$1;-><init>(Lorg/telegram/ui/ThemeActivity$2$3;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
