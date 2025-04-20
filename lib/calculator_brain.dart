// import 'dart:math';
//
// class CalculatorBrain {
//   CalculatorBrain({required this.height, required this.weight, required this.age});
//
//   final int height; // Height in cm
//   final int weight; // Weight in kg
//   final int age;    // Age in years
//
//   String calculateBMI() {
//     double bmi = weight / pow(height / 100, 2); // BMI formula
//     return bmi.toStringAsFixed(2); // Returns BMI with two decimal places
//   }
//
//   String getResult() {
//     double bmi = weight / pow(height / 100, 2);
//     if (bmi >= 30) {
//       return 'Obese';
//     } else if (bmi >= 25) {
//       return 'Overweight';
//     } else if (bmi >= 18.5) {
//       return 'Normal weight';
//     } else {
//       return 'Underweight';
//     }
//   }
//
//   String getInterpretation() {
//     double bmi = weight / pow(height / 100, 2);
//     if (bmi >= 30) {
//       if (age > 50) {
//         return 'At your age, obesity increases health risks significantly. Please consult a healthcare provider.';
//       }
//       return 'Your BMI indicates obesity, which can lead to health problems. Focus on a healthier lifestyle.';
//     } else if (bmi >= 25) {
//       if (age < 20) {
//         return 'At your age, being overweight might impact your development. Consider healthier habits.';
//       }
//       return 'Your BMI is in the overweight category. Regular exercise and a balanced diet are recommended.';
//     } else if (bmi >= 18.5) {
//       return 'Your BMI is within the normal range. Maintain your healthy lifestyle!';
//     } else {
//       if (age > 60) {
//         return 'Being underweight at your age could indicate underlying health issues. Consult a doctor.';
//       }
//       return 'Your BMI indicates you are underweight. A nutritious diet may help improve your weight.';
//     }
//   }
// }


import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    required this.height, // Height in cm
    required this.weight, // Weight in kg
    required this.age,    // Age in years
    required this.gender, // "male" or "female"
  });

  final int height;
  final int weight;
  final int age;
  final String gender;

  String calculateBMI() {
    double bmi = weight / pow(height / 100, 2); // BMI formula
    return bmi.toStringAsFixed(2); // Returns BMI with two decimal places
  }

  String getResult() {
    double bmi = weight / pow(height / 100, 2);
    if (bmi >= 30) {
      return 'Obese';
    } else if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi >= 18.5) {
      return 'Normal weight';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    double bmi = weight / pow(height / 100, 2);
    if (bmi >= 30) {
      if (gender == 'male') {
        if (age > 50) {
          return 'At your age, obesity increases health risks significantly. As a male, regular exercise and dietary adjustments are crucial.';
        }
        return 'Your BMI indicates obesity, which can lead to health problems. Focus on a healthier lifestyle.';
      } else if (gender == 'female') {
        if (age > 50) {
          return 'At your age, obesity can significantly impact hormonal and bone health. Please consult a healthcare provider.';
        }
        return 'Your BMI indicates obesity. A focus on balanced nutrition and fitness is essential.';
      }
    } else if (bmi >= 25) {
      if (gender == 'male') {
        if (age < 20) {
          return 'At your age, being overweight as a male could impact growth and fitness. Consider adopting healthier habits.';
        }
        return 'Your BMI is in the overweight category. Regular exercise and a balanced diet are recommended for males.';
      } else if (gender == 'female') {
        if (age < 20) {
          return 'At your age, being overweight might affect your hormonal health. Focus on healthy eating and exercise.';
        }
        return 'Your BMI is in the overweight category. A balanced lifestyle is important for females.';
      }
    } else if (bmi >= 18.5) {
      if (gender == 'male') {
        return 'Your BMI is within the normal range. Maintain your healthy lifestyle as a male!';
      } else if (gender == 'female') {
        return 'Your BMI is within the normal range. Keep up your healthy habits as a female!';
      }
    } else {
      if (gender == 'male') {
        if (age > 60) {
          return 'Being underweight at your age could indicate underlying health issues. Consult a doctor for male-specific concerns.';
        }
        return 'Your BMI indicates you are underweight. A nutritious diet and strength training may help improve your weight.';
      } else if (gender == 'female') {
        if (age > 60) {
          return 'Being underweight at your age could indicate bone density or other health issues. Consult a healthcare provider.';
        }
        return 'Your BMI indicates you are underweight. Focus on a nutrient-rich diet to improve your weight.';
      }
    }
    return 'Unable to determine interpretation.';
  }
}
