.class Lorg/telegram/ui/PasscodeActivity$7$2;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity$7;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PasscodeActivity$7;

.field final synthetic val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity$7;Lorg/telegram/ui/Components/NumberPicker;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$7$2;->this$1:Lorg/telegram/ui/PasscodeActivity$7;

    iput-object p2, p0, Lorg/telegram/ui/PasscodeActivity$7$2;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    iput p3, p0, Lorg/telegram/ui/PasscodeActivity$7$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$7$2;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v0

    if-nez v0, :cond_1

    sput v2, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$7$2;->this$1:Lorg/telegram/ui/PasscodeActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1200(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PasscodeActivity$7$2;->val$position:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->notifyItemChanged(I)V

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x3c

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/16 v0, 0x12c

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x4650

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    goto :goto_0
.end method
