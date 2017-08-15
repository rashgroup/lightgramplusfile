.class Lorg/telegram/ui/VoIPActivity$4;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    new-array v3, v6, [Ljava/lang/CharSequence;

    const-string/jumbo v4, "VoipAudioRoutingBluetooth"

    const v5, 0x7f08056e

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v1, "VoipAudioRoutingEarpiece"

    const v4, 0x7f08056f

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "VoipAudioRoutingSpeaker"

    const v4, 0x7f080570

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    new-instance v1, Lorg/telegram/ui/VoIPActivity$4$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$4$1;-><init>(Lorg/telegram/ui/VoIPActivity$4;)V

    invoke-virtual {v2, v3, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$600(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;
    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$600(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/VoIPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x7f020108
        0x7f02015c
        0x7f02018b
    .end array-data
.end method
