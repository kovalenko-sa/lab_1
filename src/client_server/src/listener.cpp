#include "ros/ros.h"
#include "std_msgs/String.h"
#include <string>
#include <cstdlib>

void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("Result: %s", msg->data.c_str());
  int rnd;
  rnd = rand() %3 +1;
  
  if(msg->data.c_str() == "win")
  {
   std::cout<<"Congratulations, you win!!!"<<std::endl;
  }
  else
  {
   switch(rnd)
   {
    case 1:
     std::cout<<"You lose, sorry, maybe next time"<<std::endl;
     break;
    case 2:
     std::cout<<"You've lost, try again, you'll be lucky"<<std::endl;
     break;
    case 3:
     std::cout<<"You lost (( Unlucky in roulette, lucky in love!"<<std::endl;
     break;
    }
  }
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);


 ros::spin();




  return 0;
}
